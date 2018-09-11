.class public final Lcom/google/common/hash/BloomFilter;
.super Ljava/lang/Object;
.source "BloomFilter.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilter$SerialForm;,
        Lcom/google/common/hash/BloomFilter$Strategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STRATEGY:Lcom/google/common/hash/BloomFilter$Strategy;


# instance fields
.field private final bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

.field private final funnel:Lcom/google/common/hash/Funnel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final numHashFunctions:I

.field private final strategy:Lcom/google/common/hash/BloomFilter$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 262
    sget-object v0, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_64:Lcom/google/common/hash/BloomFilterStrategies;

    sput-object v0, Lcom/google/common/hash/BloomFilter;->DEFAULT_STRATEGY:Lcom/google/common/hash/BloomFilter$Strategy;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    .locals 6
    .param p1, "bits"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .param p2, "numHashFunctions"    # I
    .param p4, "strategy"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            "I",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;",
            "Lcom/google/common/hash/BloomFilter$Strategy;",
            ")V"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p3, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "numHashFunctions (%s) must be > 0"

    new-array v4, v1, [Ljava/lang/Object;

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 113
    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/16 v2, 0xff

    if-gt p2, v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "numHashFunctions (%s) must be <= 255"

    new-array v1, v1, [Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 115
    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 118
    iput p2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    .line 119
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Funnel;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 120
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilter$Strategy;

    iput-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;Lcom/google/common/hash/BloomFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/hash/Funnel;
    .param p4, "x3"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .param p5, "x4"    # Lcom/google/common/hash/BloomFilter$1;

    .line 62
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .line 62
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/hash/BloomFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .line 62
    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/Funnel;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .line 62
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/hash/BloomFilter;)Lcom/google/common/hash/BloomFilter$Strategy;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/hash/BloomFilter;

    .line 62
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;I)Lcom/google/common/hash/BloomFilter;
    .locals 2
    .param p1, "expectedInsertions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 337
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;ID)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/common/hash/Funnel;ID)Lcom/google/common/hash/BloomFilter;
    .locals 1
    .param p1, "expectedInsertions"    # I
    .param p2, "fpp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;ID)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 288
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    sget-object v0, Lcom/google/common/hash/BloomFilter;->DEFAULT_STRATEGY:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/common/hash/BloomFilter;->create(Lcom/google/common/hash/Funnel;IDLcom/google/common/hash/BloomFilter$Strategy;)Lcom/google/common/hash/BloomFilter;

    move-result-object v0

    return-object v0
.end method

.method static create(Lcom/google/common/hash/Funnel;IDLcom/google/common/hash/BloomFilter$Strategy;)Lcom/google/common/hash/BloomFilter;
    .locals 7
    .param p1, "expectedInsertions"    # I
    .param p2, "fpp"    # D
    .param p4, "strategy"    # Lcom/google/common/hash/BloomFilter$Strategy;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;ID",
            "Lcom/google/common/hash/BloomFilter$Strategy;",
            ")",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 294
    .local p0, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Expected insertions (%s) must be >= 0"

    new-array v4, v1, [Ljava/lang/Object;

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 295
    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "False positive probability (%s) must be > 0.0"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v3, "False positive probability (%s) must be < 1.0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    if-nez p1, :cond_3

    .line 302
    const/4 p1, 0x1

    .line 310
    :cond_3
    int-to-long v0, p1

    invoke-static {v0, v1, p2, p3}, Lcom/google/common/hash/BloomFilter;->optimalNumOfBits(JD)J

    move-result-wide v0

    .line 311
    .local v0, "numBits":J
    int-to-long v2, p1

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/hash/BloomFilter;->optimalNumOfHashFunctions(JJ)I

    move-result v2

    .line 313
    .local v2, "numHashFunctions":I
    :try_start_0
    new-instance v3, Lcom/google/common/hash/BloomFilter;

    new-instance v4, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-direct {v4, v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>(J)V

    invoke-direct {v3, v4, v2, p0, p4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create BloomFilter of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bits"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static optimalNumOfBits(JD)J
    .locals 6
    .param p0, "n"    # J
    .param p2, "p"    # D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 380
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 381
    const-wide/16 p2, 0x1

    .line 383
    :cond_0
    neg-long v0, p0

    long-to-double v0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    div-double/2addr v0, v4

    double-to-long v0, v0

    return-wide v0
.end method

.method static optimalNumOfHashFunctions(JJ)I
    .locals 4
    .param p0, "n"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 366
    long-to-double v0, p2

    long-to-double v2, p0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static readFrom(Ljava/io/InputStream;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/BloomFilter;
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/hash/Funnel<",
            "TT;>;)",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    .local p1, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<TT;>;"
    const-string v0, "InputStream"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v0, "Funnel"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v0, -0x1

    .line 448
    .local v0, "strategyOrdinal":I
    const/4 v1, -0x1

    .line 449
    .local v1, "numHashFunctions":I
    const/4 v2, -0x1

    .line 451
    .local v2, "dataLength":I
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v3, "din":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    move v0, v4

    .line 456
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    move v1, v4

    .line 457
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v2, v4

    .line 459
    invoke-static {}, Lcom/google/common/hash/BloomFilterStrategies;->values()[Lcom/google/common/hash/BloomFilterStrategies;

    move-result-object v4

    aget-object v4, v4, v0

    .line 460
    .local v4, "strategy":Lcom/google/common/hash/BloomFilter$Strategy;
    new-array v5, v2, [J

    .line 461
    .local v5, "data":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 462
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 461
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 464
    .end local v6    # "i":I
    :cond_0
    new-instance v6, Lcom/google/common/hash/BloomFilter;

    new-instance v7, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-direct {v7, v5}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    invoke-direct {v6, v7, v1, p1, v4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 465
    .end local v3    # "din":Ljava/io/DataInputStream;
    .end local v4    # "strategy":Lcom/google/common/hash/BloomFilter$Strategy;
    .end local v5    # "data":[J
    :catch_0
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " numHashFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " dataLength: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 471
    .local v4, "ioException":Ljava/io/IOException;
    invoke-virtual {v4, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 472
    throw v4
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 387
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter$SerialForm;

    invoke-direct {v0, p0}, Lcom/google/common/hash/BloomFilter$SerialForm;-><init>(Lcom/google/common/hash/BloomFilter;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/common/hash/BloomFilter;->mightContain(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bitSize()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 187
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy()Lcom/google/common/hash/BloomFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Lcom/google/common/hash/BloomFilter;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    move-result-object v1

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/hash/BloomFilter;-><init>(Lcom/google/common/hash/BloomFilterStrategies$BitArray;ILcom/google/common/hash/Funnel;Lcom/google/common/hash/BloomFilter$Strategy;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 244
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 245
    return v0

    .line 247
    :cond_0
    instance-of v1, p1, Lcom/google/common/hash/BloomFilter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 248
    move-object v1, p1

    check-cast v1, Lcom/google/common/hash/BloomFilter;

    .line 249
    .local v1, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<*>;"
    iget v3, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v4, v1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v4, v1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v4, v1, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 251
    invoke-virtual {v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v4, v1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 254
    .end local v1    # "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<*>;"
    :cond_2
    return v2
.end method

.method public expectedFpp()D
    .locals 4

    .line 180
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 259
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCompatible(Lcom/google/common/hash/BloomFilter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)Z"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    if-eq p0, p1, :cond_0

    iget v0, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v1, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0
.end method

.method public mightContain(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$Strategy;->mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget-object v3, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/common/hash/BloomFilter$Strategy;->put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z

    move-result v0

    return v0
.end method

.method public putAll(Lcom/google/common/hash/BloomFilter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/hash/BloomFilter<",
            "TT;>;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    .local p1, "that":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Cannot combine a BloomFilter with itself."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 227
    iget v2, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    iget v3, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "BloomFilters must have the same number of hash functions (%s != %s)"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    iget v6, p1, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 227
    invoke-static {v2, v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v3, "BloomFilters must have the same size underlying bit arrays (%s != %s)"

    new-array v5, v4, [Ljava/lang/Object;

    .line 232
    invoke-virtual {p0}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1}, Lcom/google/common/hash/BloomFilter;->bitSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 230
    invoke-static {v2, v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BloomFilters must have equal strategies (%s != %s)"

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    aput-object v6, v5, v0

    iget-object v6, p1, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    aput-object v6, v5, v1

    invoke-static {v2, v3, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v2, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    iget-object v3, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BloomFilters must have equal funnels (%s != %s)"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    aput-object v5, v4, v0

    iget-object v0, p1, Lcom/google/common/hash/BloomFilter;->funnel:Lcom/google/common/hash/Funnel;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, p1, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->putAll(Lcom/google/common/hash/BloomFilterStrategies$BitArray;)V

    .line 240
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    .local p0, "this":Lcom/google/common/hash/BloomFilter;, "Lcom/google/common/hash/BloomFilter<TT;>;"
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 424
    .local v0, "dout":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->strategy:Lcom/google/common/hash/BloomFilter$Strategy;

    invoke-interface {v1}, Lcom/google/common/hash/BloomFilter$Strategy;->ordinal()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/SignedBytes;->checkedCast(J)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 425
    iget v1, p0, Lcom/google/common/hash/BloomFilter;->numHashFunctions:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 426
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 427
    iget-object v1, p0, Lcom/google/common/hash/BloomFilter;->bits:Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v1, v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    .line 428
    .local v4, "value":J
    invoke-virtual {v0, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 427
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method
