.class public abstract Lcom/google/common/io/ByteSource;
.super Ljava/lang/Object;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSource$ConcatenatedByteSource;,
        Lcom/google/common/io/ByteSource$EmptyByteSource;,
        Lcom/google/common/io/ByteSource$ByteArrayByteSource;,
        Lcom/google/common/io/ByteSource$SlicedByteSource;,
        Lcom/google/common/io/ByteSource$AsCharSource;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final countBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/io/ByteSource;->countBuffer:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 346
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/io/ByteSource;>;"
    new-instance v0, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ConcatenatedByteSource;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static concat(Ljava/util/Iterator;)Lcom/google/common/io/ByteSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/ByteSource;",
            ">;)",
            "Lcom/google/common/io/ByteSource;"
        }
    .end annotation

    .line 368
    .local p0, "sources":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/io/ByteSource;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lcom/google/common/io/ByteSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p0, "sources"    # [Lcom/google/common/io/ByteSource;

    .line 384
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteSource;->concat(Ljava/lang/Iterable;)Lcom/google/common/io/ByteSource;

    move-result-object v0

    return-object v0
.end method

.method private countByReading(Ljava/io/InputStream;)J
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const-wide/16 v0, 0x0

    .line 201
    .local v0, "count":J
    :goto_0
    sget-object v2, Lcom/google/common/io/ByteSource;->countBuffer:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    int-to-long v2, v2

    move-wide v4, v2

    .local v4, "read":J
    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 202
    add-long/2addr v0, v4

    goto :goto_0

    .line 204
    :cond_0
    return-wide v0
.end method

.method private countBySkipping(Ljava/io/InputStream;)J
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 180
    .local v2, "count":J
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    const v5, 0x7fffffff

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 181
    .local v4, "skipped":J
    cmp-long v6, v4, v0

    if-gtz v6, :cond_3

    .line 182
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 183
    return-wide v2

    .line 184
    :cond_0
    cmp-long v6, v2, v0

    if-nez v6, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 189
    :cond_2
    :goto_1
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_2

    .line 191
    :cond_3
    add-long/2addr v2, v4

    .line 193
    .end local v4    # "skipped":J
    :goto_2
    goto :goto_0
.end method

.method public static empty()Lcom/google/common/io/ByteSource;
    .locals 1

    .line 403
    invoke-static {}, Lcom/google/common/io/ByteSource$EmptyByteSource;->access$200()Lcom/google/common/io/ByteSource$EmptyByteSource;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([B)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p0, "b"    # [B

    .line 394
    new-instance v0, Lcom/google/common/io/ByteSource$ByteArrayByteSource;

    invoke-direct {v0, p0}, Lcom/google/common/io/ByteSource$ByteArrayByteSource;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asCharSource(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 73
    new-instance v0, Lcom/google/common/io/ByteSource$AsCharSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ByteSource$AsCharSource;-><init>(Lcom/google/common/io/ByteSource;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSource$1;)V

    return-object v0
.end method

.method public contentEquals(Lcom/google/common/io/ByteSource;)Z
    .locals 10
    .param p1, "other"    # Lcom/google/common/io/ByteSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 312
    .local v1, "buf1":[B
    new-array v2, v0, [B

    .line 314
    .local v2, "buf2":[B
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v3

    .line 316
    .local v3, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    .line 317
    .local v4, "in1":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    .line 319
    .local v5, "in2":Ljava/io/InputStream;
    :goto_0
    const/4 v6, 0x0

    invoke-static {v4, v1, v6, v0}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v7

    .line 320
    .local v7, "read1":I
    invoke-static {v5, v2, v6, v0}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v8

    .line 321
    .local v8, "read2":I
    if-ne v7, v8, :cond_2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    if-eq v7, v0, :cond_1

    .line 324
    const/4 v0, 0x1

    .line 330
    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    .line 324
    return v0

    .line 326
    .end local v7    # "read1":I
    .end local v8    # "read2":I
    :cond_1
    goto :goto_0

    .line 322
    .restart local v7    # "read1":I
    .restart local v8    # "read2":I
    :cond_2
    :goto_1
    nop

    .line 330
    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    .line 322
    return v6

    .line 330
    .end local v4    # "in1":Ljava/io/InputStream;
    .end local v5    # "in2":Ljava/io/InputStream;
    .end local v7    # "read1":I
    .end local v8    # "read2":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v3}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method public copyTo(Lcom/google/common/io/ByteSink;)J
    .locals 5
    .param p1, "sink"    # Lcom/google/common/io/ByteSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 239
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 240
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Ljava/io/OutputStream;

    .line 241
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static {v1, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 241
    return-wide v3

    .line 245
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public copyTo(Ljava/io/OutputStream;)J
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 219
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 220
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 220
    return-wide v2

    .line 224
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "hashFunction"    # Lcom/google/common/hash/HashFunction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 297
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-static {v0}, Lcom/google/common/hash/Funnels;->asOutputStream(Lcom/google/common/hash/PrimitiveSink;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/io/ByteSource;->copyTo(Ljava/io/OutputStream;)J

    .line 298
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 125
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 126
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 130
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 126
    return v2

    .line 130
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 100
    .local v0, "in":Ljava/io/InputStream;
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 101
    move-object v1, v0

    check-cast v1, Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    :goto_0
    return-object v1
.end method

.method public abstract openStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 281
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 282
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1, p1}, Lcom/google/common/io/ByteStreams;->readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 282
    return-object v2

    .line 286
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public read()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 257
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 258
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 258
    return-object v2

    .line 262
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public size()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 152
    .local v0, "closer":Lcom/google/common/io/Closer;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 153
    .local v1, "in":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/google/common/io/ByteSource;->countBySkipping(Ljava/io/InputStream;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 153
    return-wide v2

    .line 157
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1

    .line 154
    :catch_0
    move-exception v1

    .line 157
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 158
    nop

    .line 160
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 163
    .restart local v1    # "in":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/google/common/io/ByteSource;->countByReading(Ljava/io/InputStream;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    .line 163
    return-wide v2

    .line 167
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/io/Closer;->close()V

    throw v1
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 8
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 112
    new-instance v7, Lcom/google/common/io/ByteSource$SlicedByteSource;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/common/io/ByteSource$SlicedByteSource;-><init>(Lcom/google/common/io/ByteSource;JJLcom/google/common/io/ByteSource$1;)V

    return-object v7
.end method
