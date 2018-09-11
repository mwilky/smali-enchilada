.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "Chars.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$CharArrayAsList;,
        Lcom/google/common/primitives/Chars$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([CCII)I
    .locals 1
    .param p0, "x0"    # [C
    .param p1, "x1"    # C
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 465
    array-length v0, p0

    if-nez v0, :cond_0

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 468
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$CharArrayAsList;-><init>([C)V

    return-object v0
.end method

.method public static checkedCast(J)C
    .locals 4
    .param p0, "value"    # J

    .line 80
    long-to-int v0, p0

    int-to-char v0, v0

    .line 81
    .local v0, "result":C
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 85
    return v0

    .line 83
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

.method public static compare(CC)I
    .locals 1
    .param p0, "a"    # C
    .param p1, "b"    # C

    .line 119
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .locals 8
    .param p0, "arrays"    # [[C

    .line 266
    const/4 v0, 0x0

    .line 267
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

    .line 268
    .local v4, "array":[C
    array-length v5, v4

    add-int/2addr v3, v5

    .line 267
    .end local v4    # "array":[C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-array v0, v3, [C

    .line 271
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 272
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 273
    .local v6, "array":[C
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    array-length v7, v6

    add-int/2addr v5, v7

    .line 272
    .end local v6    # "array":[C
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_1
    return-object v0
.end method

.method public static contains([CC)Z
    .locals 4
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 132
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    .line 133
    .local v3, "value":C
    if-ne v3, p1, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 132
    .end local v3    # "value":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return v1
.end method

.method private static copyOf([CI)[C
    .locals 3
    .param p0, "original"    # [C
    .param p1, "length"    # I

    .line 355
    new-array v0, p1, [C

    .line 356
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    return-object v0
.end method

.method public static ensureCapacity([CII)[C
    .locals 6
    .param p0, "array"    # [C
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 346
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

    .line 347
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

    .line 348
    array-length v0, p0

    if-ge v0, p1, :cond_2

    .line 349
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Chars;->copyOf([CI)[C

    move-result-object v0

    goto :goto_2

    .line 350
    :cond_2
    nop

    .line 348
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static fromByteArray([B)C
    .locals 7
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 311
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v4, "array too small: %s < %s"

    new-array v5, v3, [Ljava/lang/Object;

    array-length v6, p0

    .line 312
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    .line 311
    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    aget-byte v0, p0, v1

    aget-byte v1, p0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0
.end method

.method public static fromBytes(BB)C
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 325
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .locals 0
    .param p0, "value"    # C

    .line 68
    return p0
.end method

.method public static indexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 150
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->indexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static indexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 156
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 157
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 158
    return v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([C[C)I
    .locals 5
    .param p0, "array"    # [C
    .param p1, "target"    # [C

    .line 176
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 183
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 184
    move v2, v1

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 185
    add-int v3, v0, v2

    aget-char v3, p0, v3

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 186
    nop

    .line 183
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    .end local v2    # "j":I
    :cond_2
    return v0

    .line 191
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [C

    .line 370
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    array-length v0, p1

    .line 372
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 373
    const-string v1, ""

    return-object v1

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 380
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf([CC)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C

    .line 204
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Chars;->lastIndexOf([CCII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([CCII)I
    .locals 2
    .param p0, "array"    # [C
    .param p1, "target"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 210
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 211
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 212
    return v0

    .line 210
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 215
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
            "[C>;"
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/google/common/primitives/Chars$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Chars$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 246
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

    .line 247
    aget-char v0, p0, v1

    .line 248
    .local v0, "max":C
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 249
    aget-char v2, p0, v1

    if-le v2, v0, :cond_1

    .line 250
    aget-char v0, p0, v1

    .line 248
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 253
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static varargs min([C)C
    .locals 3
    .param p0, "array"    # [C

    .line 227
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

    .line 228
    aget-char v0, p0, v1

    .line 229
    .local v0, "min":C
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 230
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_1

    .line 231
    aget-char v0, p0, v1

    .line 229
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 234
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)C
    .locals 2
    .param p0, "value"    # J

    .line 97
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 98
    const v0, 0xffff

    return v0

    .line 100
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_1
    long-to-int v0, p0

    int-to-char v0, v0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .line 436
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Character;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    if-eqz v0, :cond_0

    .line 437
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Chars$CharArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Chars$CharArrayAsList;->toCharArray()[C

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 442
    .local v1, "len":I
    new-array v2, v1, [C

    .line 443
    .local v2, "array":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 445
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    aput-char v4, v2, v3

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 447
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static toByteArray(C)[B
    .locals 3
    .param p0, "value"    # C
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
