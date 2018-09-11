.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 261
    array-length v0, p0

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    return-object v0
.end method

.method public static varargs concat([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B

    .line 171
    const/4 v0, 0x0

    .line 172
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

    .line 173
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 172
    .end local v4    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-array v0, v3, [B

    .line 176
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 177
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 178
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v7, v6

    add-int/2addr v5, v7

    .line 177
    .end local v6    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_1
    return-object v0
.end method

.method public static contains([BB)Z
    .locals 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    .line 76
    .local v3, "value":B
    if-ne v3, p1, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 75
    .end local v3    # "value":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return v1
.end method

.method private static copyOf([BI)[B
    .locals 3
    .param p0, "original"    # [B
    .param p1, "length"    # I

    .line 211
    new-array v0, p1, [B

    .line 212
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v0
.end method

.method public static ensureCapacity([BII)[B
    .locals 6
    .param p0, "array"    # [B
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 202
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

    .line 203
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

    .line 204
    array-length v0, p0

    if-ge v0, p1, :cond_2

    .line 205
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Bytes;->copyOf([BI)[B

    move-result-object v0

    goto :goto_2

    .line 206
    :cond_2
    nop

    .line 204
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static hashCode(B)I
    .locals 0
    .param p0, "value"    # B

    .line 62
    return p0
.end method

.method public static indexOf([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 93
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 99
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 100
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 101
    return v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([B[B)I
    .locals 5
    .param p0, "array"    # [B
    .param p1, "target"    # [B

    .line 119
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    return v1

    .line 126
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 127
    move v2, v1

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 128
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 129
    nop

    .line 126
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "j":I
    :cond_2
    return v0

    .line 134
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOf([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 153
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 154
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 155
    return v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .line 232
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_0

    .line 233
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 238
    .local v1, "len":I
    new-array v2, v1, [B

    .line 239
    .local v2, "array":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 241
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method
