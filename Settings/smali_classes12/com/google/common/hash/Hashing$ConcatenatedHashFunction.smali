.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 5
    .param p1, "functions"    # [Lcom/google/common/hash/HashFunction;

    .line 418
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "bitSum":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 421
    .local v3, "function":Lcom/google/common/hash/HashFunction;
    invoke-interface {v3}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v4

    add-int/2addr v0, v4

    .line 420
    .end local v3    # "function":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iput v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 424
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 445
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 446
    .local v0, "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    iget v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v3, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    iget-object v3, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    return v1

    .line 449
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 447
    :cond_3
    :goto_1
    return v1

    .line 456
    .end local v0    # "other":Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 461
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 462
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 463
    .local v4, "function":Lcom/google/common/hash/HashFunction;
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v0, v5

    .line 462
    .end local v4    # "function":Lcom/google/common/hash/HashFunction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return v0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 7
    .param p1, "hashers"    # [Lcom/google/common/hash/Hasher;

    .line 428
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 429
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 430
    .local v1, "i":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 431
    .local v4, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v4}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v5

    .line 432
    .local v5, "newHash":Lcom/google/common/hash/HashCode;
    invoke-virtual {v5}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v0, v1, v6}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v6

    add-int/2addr v1, v6

    .line 430
    .end local v4    # "hasher":Lcom/google/common/hash/Hasher;
    .end local v5    # "newHash":Lcom/google/common/hash/HashCode;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v2

    return-object v2
.end method
