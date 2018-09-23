.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"


# static fields
.field public static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field public static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTimeout(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static connectToKernel(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Landroid/system/NetlinkSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {p0, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public static forProto(I)Ljava/io/FileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v3, 0x10000

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    return-object v0
.end method

.method public static recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const-string v2, "NetlinkSocket"

    const-string/jumbo v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-static {p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string v0, "Error in NetlinkSocket.sendOneShotKernelMessage"

    const-wide/16 v1, 0x12c

    move-wide v3, v1

    :try_start_0
    invoke-static {p0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    const/4 v8, 0x0

    array-length v9, p1

    const-wide/16 v10, 0x12c

    move-object v6, v5

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    const/16 v6, 0x2000

    invoke-static {v5, v6, v1, v2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v6, v2, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v6, :cond_1

    move-object v6, v2

    check-cast v6, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v6}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object v6, v2

    check-cast v6, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v6}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v6

    iget v6, v6, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    nop

    nop

    nop

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return-void

    :cond_0
    :try_start_1
    const-string v7, "NetlinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7

    :cond_1
    if-nez v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "raw bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v7, "NetlinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/system/ErrnoException;

    sget v8, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v7, v6, v8}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "NetlinkSocket"

    const-string v5, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/system/ErrnoException;

    sget v5, Landroid/system/OsConstants;->EIO:I

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-direct {v2, v6, v5, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    const-string v2, "NetlinkSocket"

    const-string v5, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/system/ErrnoException;

    sget v5, Landroid/system/OsConstants;->ETIMEDOUT:I

    const-string v6, "Error in NetlinkSocket.sendOneShotKernelMessage"

    invoke-direct {v2, v6, v5, v1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method
