.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 11
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .line 66
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v0

    .line 67
    .local v0, "bitSize":J
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    .line 68
    .local v2, "hash64":J
    long-to-int v4, v2

    .line 69
    .local v4, "hash1":I
    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v5, v5

    .line 71
    .local v5, "hash2":I
    const/4 v6, 0x1

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_2

    .line 72
    mul-int v8, v7, v5

    add-int/2addr v8, v4

    .line 74
    .local v8, "combinedHash":I
    if-gez v8, :cond_0

    .line 75
    not-int v8, v8

    .line 77
    :cond_0
    int-to-long v9, v8

    rem-long/2addr v9, v0

    invoke-virtual {p4, v9, v10}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v9

    if-nez v9, :cond_1

    .line 78
    const/4 v6, 0x0

    return v6

    .line 71
    .end local v8    # "combinedHash":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 81
    .end local v7    # "i":I
    :cond_2
    return v6
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 11
    .param p3, "numHashFunctions"    # I
    .param p4, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .line 47
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v0

    .line 48
    .local v0, "bitSize":J
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    .line 49
    .local v2, "hash64":J
    long-to-int v4, v2

    .line 50
    .local v4, "hash1":I
    const/16 v5, 0x20

    ushr-long v5, v2, v5

    long-to-int v5, v5

    .line 52
    .local v5, "hash2":I
    const/4 v6, 0x0

    .line 53
    .local v6, "bitsChanged":Z
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, p3, :cond_1

    .line 54
    mul-int v8, v7, v5

    add-int/2addr v8, v4

    .line 56
    .local v8, "combinedHash":I
    if-gez v8, :cond_0

    .line 57
    not-int v8, v8

    .line 59
    :cond_0
    int-to-long v9, v8

    rem-long/2addr v9, v0

    invoke-virtual {p4, v9, v10}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(J)Z

    move-result v9

    or-int/2addr v6, v9

    .line 53
    .end local v8    # "combinedHash":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 61
    .end local v7    # "i":I
    :cond_1
    return v6
.end method
