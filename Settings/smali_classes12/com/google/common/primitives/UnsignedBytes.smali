.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t

.field private static final UNSIGNED_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 4
    .param p0, "value"    # J

    .line 86
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(BB)I
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B

    .line 123
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .line 241
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    array-length v0, p1

    if-nez v0, :cond_0

    .line 243
    const-string v0, ""

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 248
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 250
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 155
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

    .line 156
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 157
    .local v0, "max":I
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 158
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 159
    .local v2, "next":I
    if-le v2, v0, :cond_1

    .line 160
    move v0, v2

    .line 157
    .end local v2    # "next":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_1

    .line 163
    .end local v2    # "i":I
    :cond_2
    int-to-byte v1, v0

    return v1
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 135
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

    .line 136
    aget-byte v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 137
    .local v0, "min":I
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 138
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 139
    .local v2, "next":I
    if-ge v2, v0, :cond_1

    .line 140
    move v0, v2

    .line 137
    .end local v2    # "next":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_1

    .line 143
    .end local v2    # "i":I
    :cond_2
    int-to-byte v1, v0

    return v1
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 205
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 222
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "parse":I
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 225
    int-to-byte v1, v0

    return v1

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static saturatedCast(J)B
    .locals 3
    .param p0, "value"    # J

    .line 102
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    return v0

    .line 108
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method public static toInt(B)I
    .locals 1
    .param p0, "value"    # B

    .line 72
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # B
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 173
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(BI)Ljava/lang/String;
    .locals 5
    .param p0, "x"    # B
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    const/16 v2, 0x24

    if-gt p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 188
    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
