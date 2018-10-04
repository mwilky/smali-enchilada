.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static final sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mEmptyBuffer:Ljava/nio/ByteBuffer;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mEmptyBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .locals 6

    const-class v0, Landroid/media/MiniThumbFile;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MiniThumbFile;

    if-nez v2, :cond_0

    new-instance v3, Landroid/media/MiniThumbFile;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/media"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    move-object v2, v3

    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .locals 6

    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create .thumbnails directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_0
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    :cond_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 3

    const-class v0, Landroid/media/MiniThumbFile;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MiniThumbFile;

    invoke-virtual {v2}, Landroid/media/MiniThumbFile;->deactivate()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eraseMiniThumb(J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    const-wide/16 v1, 0x2710

    mul-long/2addr v1, p1

    const/4 v3, 0x0

    move-object v9, v3

    :try_start_1
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v10, 0x9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    move-wide v4, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3

    move-object v9, v3

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-ne v3, v10, :cond_2

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    const-string v5, "MiniThumbFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no thumbnail for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v6, p0, Landroid/media/MiniThumbFile;->mEmptyBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_5
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading magic, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_7
    const-string v4, "MiniThumbFile"

    const-string v5, "Got exception checking file magic: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v9, :cond_3

    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_5

    :cond_3
    :goto_2
    goto :goto_5

    :goto_3
    nop

    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v4

    nop

    :cond_4
    :goto_4
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMagic(J)J
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x2710

    mul-long/2addr v1, p1

    const/4 v3, 0x0

    move-object v9, v3

    :try_start_1
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v10, 0x9

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x9

    const/4 v8, 0x1

    move-wide v4, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3

    move-object v9, v3

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v3

    if-ne v3, v10, :cond_1

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    monitor-exit p0

    return-wide v3

    :cond_1
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading magic, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_2

    :try_start_5
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_6
    const-string v4, "MiniThumbFile"

    const-string v5, "Got exception checking file magic: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_2

    :try_start_7
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_5

    :cond_2
    :goto_2
    goto :goto_5

    :goto_3
    nop

    if-eqz v9, :cond_3

    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v4

    nop

    :cond_3
    :goto_4
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4
    :goto_5
    const-wide/16 v1, 0x0

    monitor-exit p0

    return-wide v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .locals 18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    const/4 v6, 0x0

    if-nez v5, :cond_0

    monitor-exit p0

    return-object v6

    :cond_0
    const-wide/16 v7, 0x2710

    mul-long/2addr v7, v2

    move-object v15, v6

    :try_start_1
    iget-object v0, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v9, v1, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v12, 0x2710

    const/4 v14, 0x1

    move-wide v10, v7

    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    move-object v15, v0

    iget-object v0, v1, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v9, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v9, v7, v8}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    move v9, v0

    const/16 v0, 0xd

    if-le v9, v0, :cond_2

    iget-object v10, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v10, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    iget-object v12, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    iget-object v14, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    add-int/2addr v0, v14

    if-lt v9, v0, :cond_2

    if-eqz v14, :cond_2

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    array-length v0, v4

    if-lt v0, v14, :cond_2

    iget-object v0, v1, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v11, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v15, :cond_1

    :try_start_2
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    monitor-exit p0

    return-object v4

    :cond_2
    if-eqz v15, :cond_3

    :try_start_3
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    const-string v9, "MiniThumbFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got exception when reading thumbnail, id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", disk full or mount read-only? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_3

    :try_start_5
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_6
    const-string v9, "MiniThumbFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got exception when reading thumbnail id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_3

    :try_start_7
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :goto_3
    monitor-exit p0

    return-object v6

    :goto_4
    nop

    if-eqz v15, :cond_4

    :try_start_8
    invoke-virtual {v15}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v0

    nop

    :cond_4
    :goto_5
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v1, 0x2710

    mul-long/2addr v1, p2

    const/4 v3, 0x0

    move-object v9, v3

    if-eqz p1, :cond_5

    :try_start_1
    array-length v3, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x2703

    if-le v3, v4, :cond_2

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v6, 0x2710

    const/4 v8, 0x0

    move-wide v4, v1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3

    move-object v9, v3

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_4
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_6

    :cond_3
    :goto_2
    goto :goto_6

    :catch_3
    move-exception v3

    :try_start_6
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    nop

    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catch_4
    move-exception v4

    nop

    :cond_4
    :goto_4
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    :goto_5
    if-eqz v9, :cond_3

    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :goto_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
