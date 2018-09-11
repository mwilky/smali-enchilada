.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteStreams$LimitedInputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;,
        Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;,
        Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 501
    new-instance v0, Lcom/google/common/io/ByteStreams$1;

    invoke-direct {v0}, Lcom/google/common/io/ByteStreams$1;-><init>()V

    sput-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 68
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 70
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 71
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 72
    nop

    .line 77
    .end local v3    # "r":I
    return-wide v1

    .line 74
    .restart local v3    # "r":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 76
    .end local v3    # "r":I
    goto :goto_0
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)J
    .locals 5
    .param p0, "from"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "to"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 94
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const-wide/16 v1, 0x0

    .line 95
    .local v1, "total":J
    :goto_0
    invoke-interface {p0, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 97
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 102
    :cond_1
    return-wide v1
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .line 540
    new-instance v0, Lcom/google/common/io/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/io/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "byteArrayInputStream"    # Ljava/io/ByteArrayInputStream;

    .line 202
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    return-object v0
.end method

.method public static newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;
    .locals 1
    .param p0, "bytes"    # [B

    .line 177
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "start"    # I

    .line 188
    array-length v0, p0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 189
    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v1, p0

    sub-int/2addr v1, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput(Ljava/io/ByteArrayInputStream;)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput()Lcom/google/common/io/ByteArrayDataOutput;
    .locals 1

    .line 339
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(I)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 5
    .param p0, "size"    # I

    .line 349
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Invalid size: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 350
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;

    move-result-object v0

    return-object v0
.end method

.method public static newDataOutput(Ljava/io/ByteArrayOutputStream;)Lcom/google/common/io/ByteArrayDataOutput;
    .locals 2
    .param p0, "byteArrayOutputSteam"    # Ljava/io/ByteArrayOutputStream;

    .line 369
    new-instance v0, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/google/common/io/ByteStreams$ByteArrayDataOutputStream;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v0
.end method

.method public static nullOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 527
    sget-object v0, Lcom/google/common/io/ByteStreams;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    if-ltz p3, :cond_2

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "total":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 733
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 734
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 735
    goto :goto_1

    .line 737
    :cond_0
    add-int/2addr v0, v1

    .line 738
    .end local v1    # "result":I
    goto :goto_0

    .line 739
    :cond_1
    :goto_1
    return v0

    .line 729
    .end local v0    # "total":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/google/common/io/ByteProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    .local p1, "processor":Lcom/google/common/io/ByteProcessor;, "Lcom/google/common/io/ByteProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 695
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 696
    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/io/ByteStreams;->readFully(Ljava/io/InputStream;[BII)V

    .line 623
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 642
    .local v0, "read":I
    if-ne v0, p3, :cond_0

    .line 646
    return-void

    .line 643
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached end of stream after reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    move-wide v0, p1

    .line 662
    .local v0, "n":J
    .local p1, "toSkip":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 663
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 664
    .local v4, "amt":J
    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 666
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 671
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_1

    .line 667
    :cond_0
    sub-long v2, p1, v0

    .line 668
    .local v2, "skipped":J
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reached end of stream after skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes expected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 673
    .end local v2    # "skipped":J
    :cond_1
    sub-long/2addr v0, v4

    .line 675
    .end local v4    # "amt":J
    :goto_1
    goto :goto_0

    .line 676
    :cond_2
    return-void
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static toByteArray(Ljava/io/InputStream;I)[B
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-array v0, p1, [B

    .line 128
    .local v0, "bytes":[B
    move v1, p1

    .line 130
    .local v1, "remaining":I
    :goto_0
    const/4 v2, -0x1

    if-lez v1, :cond_1

    .line 131
    sub-int v3, p1, v1

    .line 132
    .local v3, "off":I
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 133
    .local v4, "read":I
    if-ne v4, v2, :cond_0

    .line 136
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2

    .line 138
    :cond_0
    sub-int/2addr v1, v4

    .line 139
    .end local v3    # "off":I
    .end local v4    # "read":I
    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 143
    .local v3, "b":I
    if-ne v3, v2, :cond_2

    .line 144
    return-object v0

    .line 148
    :cond_2
    new-instance v2, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;-><init>(Lcom/google/common/io/ByteStreams$1;)V

    .line 149
    .local v2, "out":Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;
    invoke-virtual {v2, v3}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->write(I)V

    .line 150
    invoke-static {p0, v2}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 152
    array-length v4, v0

    invoke-virtual {v2}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 153
    .local v4, "result":[B
    array-length v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/common/io/ByteStreams$FastByteArrayOutputStream;->writeTo([BI)V

    .line 155
    return-object v4
.end method
