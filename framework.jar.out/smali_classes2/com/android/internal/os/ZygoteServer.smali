.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# static fields
.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private mCloseSocketFd:Z

.field private mIsForkChild:Z

.field private mServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeServerSocket()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZygoteServer"

    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ZygoteServer"

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method registerServerSocketFromEnv(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_SOCKET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    nop

    nop

    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-direct {v3, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " unset or invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/system/StructPollfd;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    new-instance v5, Landroid/system/StructPollfd;

    invoke-direct {v5}, Landroid/system/StructPollfd;-><init>()V

    aput-object v5, v2, v4

    aget-object v5, v2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/FileDescriptor;

    iput-object v6, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v5, v2, v4

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v6, v6

    iput-short v6, v5, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    :try_start_0
    invoke-static {v2, v4}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_8

    aget-object v5, v2, v4

    iget-short v5, v5, Landroid/system/StructPollfd;->revents:S

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v5, p0}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    if-eqz v6, :cond_3

    nop

    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-object v6

    :cond_3
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "command == null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    goto :goto_4

    :cond_6
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "command != null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    goto :goto_5

    :catch_0
    move-exception v5

    :try_start_4
    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v6, :cond_7

    const-string v6, "ZygoteServer"

    const-string v7, "Exception executing zygote command: "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v6}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    const-string v6, "ZygoteServer"

    const-string v7, "Caught post-fork exception in child process."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    throw v5

    :cond_8
    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "poll failed"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method setForkChild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method
