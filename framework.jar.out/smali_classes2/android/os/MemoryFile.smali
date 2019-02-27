.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$MemoryOutputStream;,
        Landroid/os/MemoryFile$MemoryInputStream;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowPurging:Z

.field private mMapping:Ljava/nio/ByteBuffer;

.field private mSharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method static synthetic access$200(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;
    .locals 1

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private beginAccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/MemoryFile;->checkActive()V

    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MemoryFile has been purged"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MemoryFile has been deactivated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private endAccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    :cond_0
    return-void
.end method

.method public static getSize(Ljava/io/FileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized allowPurging(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    return-void
.end method

.method deactivate()V
    .locals 1

    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V

    return-object v0
.end method

.method public isPurgingAllowed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    return v0
.end method

.method public readBytes([BIII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    :try_start_0
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    nop

    return p4

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    throw v0
.end method

.method public writeBytes([BIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    :try_start_0
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    throw v0
.end method
