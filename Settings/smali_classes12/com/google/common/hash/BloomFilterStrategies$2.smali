.class final enum Lcom/google/common/hash/BloomFilterStrategies$2;
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

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method

.method private lowerEight([B)J
    .locals 9
    .param p1, "bytes"    # [B

    .line 129
    const/4 v0, 0x7

    aget-byte v1, p1, v0

    const/4 v0, 0x6

    aget-byte v2, p1, v0

    const/4 v0, 0x5

    aget-byte v3, p1, v0

    const/4 v0, 0x4

    aget-byte v4, p1, v0

    const/4 v0, 0x3

    aget-byte v5, p1, v0

    const/4 v0, 0x2

    aget-byte v6, p1, v0

    const/4 v0, 0x1

    aget-byte v7, p1, v0

    const/4 v0, 0x0

    aget-byte v8, p1, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method

.method private upperEight([B)J
    .locals 9
    .param p1, "bytes"    # [B

    .line 134
    const/16 v0, 0xf

    aget-byte v1, p1, v0

    const/16 v0, 0xe

    aget-byte v2, p1, v0

    const/16 v0, 0xd

    aget-byte v3, p1, v0

    const/16 v0, 0xc

    aget-byte v4, p1, v0

    const/16 v0, 0xb

    aget-byte v5, p1, v0

    const/16 v0, 0xa

    aget-byte v6, p1, v0

    const/16 v0, 0x9

    aget-byte v7, p1, v0

    const/16 v0, 0x8

    aget-byte v8, p1, v0

    invoke-static/range {v1 .. v8}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 19
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

    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    move-object/from16 v0, p0

    .line 112
    invoke-virtual/range {p4 .. p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v1

    .line 113
    .local v1, "bitSize":J
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v3

    .line 114
    .local v3, "bytes":[B
    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->lowerEight([B)J

    move-result-wide v6

    .line 115
    .local v6, "hash1":J
    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->upperEight([B)J

    move-result-wide v8

    .line 117
    .local v8, "hash2":J
    move-wide v10, v6

    .line 118
    .local v10, "combinedHash":J
    move-wide v13, v10

    const/4 v10, 0x0

    .local v10, "i":I
    .local v13, "combinedHash":J
    :goto_0
    move/from16 v11, p3

    if-ge v10, v11, :cond_1

    .line 120
    const-wide v15, 0x7fffffffffffffffL

    and-long/2addr v15, v13

    move-wide/from16 v17, v13

    rem-long v12, v15, v1

    .end local v13    # "combinedHash":J
    .local v17, "combinedHash":J
    move-object/from16 v14, p4

    invoke-virtual {v14, v12, v13}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v12

    if-nez v12, :cond_0

    .line 121
    const/4 v12, 0x0

    return v12

    .line 123
    :cond_0
    const/4 v12, 0x0

    add-long v15, v17, v8

    .line 118
    .end local v17    # "combinedHash":J
    .local v15, "combinedHash":J
    add-int/lit8 v10, v10, 0x1

    move-wide v13, v15

    goto :goto_0

    .line 125
    .end local v10    # "i":I
    .end local v15    # "combinedHash":J
    .restart local v13    # "combinedHash":J
    :cond_1
    move-wide/from16 v17, v13

    move-object/from16 v14, p4

    .end local v13    # "combinedHash":J
    .restart local v17    # "combinedHash":J
    const/4 v10, 0x1

    return v10
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 18
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

    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    move-object/from16 v0, p0

    .line 94
    invoke-virtual/range {p4 .. p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v1

    .line 95
    .local v1, "bitSize":J
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v3

    .line 96
    .local v3, "bytes":[B
    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->lowerEight([B)J

    move-result-wide v6

    .line 97
    .local v6, "hash1":J
    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->upperEight([B)J

    move-result-wide v8

    .line 99
    .local v8, "hash2":J
    const/4 v10, 0x0

    .line 100
    .local v10, "bitsChanged":Z
    move-wide v11, v6

    .line 101
    .local v11, "combinedHash":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v14, p3

    if-ge v13, v14, :cond_0

    .line 103
    const-wide v15, 0x7fffffffffffffffL

    and-long/2addr v15, v11

    move-object/from16 v17, v3

    rem-long v3, v15, v1

    .end local v3    # "bytes":[B
    .local v17, "bytes":[B
    move-object/from16 v15, p4

    invoke-virtual {v15, v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(J)Z

    move-result v3

    or-int/2addr v10, v3

    .line 104
    add-long/2addr v11, v8

    .line 101
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    goto :goto_0

    .line 106
    .end local v13    # "i":I
    .end local v17    # "bytes":[B
    .restart local v3    # "bytes":[B
    :cond_0
    move-object/from16 v15, p4

    move-object/from16 v17, v3

    .end local v3    # "bytes":[B
    .restart local v17    # "bytes":[B
    return v10
.end method
