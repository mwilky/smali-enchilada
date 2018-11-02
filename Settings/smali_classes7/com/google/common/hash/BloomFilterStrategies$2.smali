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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method

.method private lowerEight([B)J
    .locals 9

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

    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v1

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->lowerEight([B)J

    move-result-wide v6

    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->upperEight([B)J

    move-result-wide v8

    move-wide v10, v6

    move-wide v13, v10

    const/4 v10, 0x0

    :goto_0
    move/from16 v11, p3

    if-ge v10, v11, :cond_1

    const-wide v15, 0x7fffffffffffffffL

    and-long/2addr v15, v13

    move-wide/from16 v17, v13

    rem-long v12, v15, v1

    move-object/from16 v14, p4

    invoke-virtual {v14, v12, v13}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    return v12

    :cond_0
    const/4 v12, 0x0

    add-long v15, v17, v8

    add-int/lit8 v10, v10, 0x1

    move-wide v13, v15

    goto :goto_0

    :cond_1
    move-wide/from16 v17, v13

    move-object/from16 v14, p4

    const/4 v10, 0x1

    return v10
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 18
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

    move-object/from16 v0, p0

    invoke-virtual/range {p4 .. p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v1

    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-interface {v3, v4, v5}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->lowerEight([B)J

    move-result-wide v6

    invoke-direct {v0, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;->upperEight([B)J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v11, v6

    const/4 v13, 0x0

    :goto_0
    move/from16 v14, p3

    if-ge v13, v14, :cond_0

    const-wide v15, 0x7fffffffffffffffL

    and-long/2addr v15, v11

    move-object/from16 v17, v3

    rem-long v3, v15, v1

    move-object/from16 v15, p4

    invoke-virtual {v15, v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(J)Z

    move-result v3

    or-int/2addr v10, v3

    add-long/2addr v11, v8

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, p1

    goto :goto_0

    :cond_0
    move-object/from16 v15, p4

    move-object/from16 v17, v3

    return v10
.end method
