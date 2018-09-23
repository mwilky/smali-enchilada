.class Lcom/android/server/clipboard/HostClipboardMonitor;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;
    }
.end annotation


# static fields
.field private static final PIPE_DEVICE:Ljava/lang/String; = "/dev/qemu_pipe"

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"


# instance fields
.field private mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

.field private mPipe:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    return-void
.end method

.method private openPipe()V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "pipe:clipboard"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const-string/jumbo v1, "pipe:clipboard"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const-string/jumbo v1, "pipe:clipboard"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v3, "pipe:clipboard"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/dev/qemu_pipe"

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/clipboard/HostClipboardMonitor;->openPipe()V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    move v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;->onHostClipboardUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    :goto_3
    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHostClipboard(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HostClipboardMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set host clipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
