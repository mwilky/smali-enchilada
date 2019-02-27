.class Landroid/util/apk/ByteBufferDataSource;
.super Ljava/lang/Object;
.source "ByteBufferDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# instance fields
.field private final mBuf:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v2, p2

    add-int/2addr v2, p4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v1}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Landroid/util/apk/ByteBufferDataSource;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
