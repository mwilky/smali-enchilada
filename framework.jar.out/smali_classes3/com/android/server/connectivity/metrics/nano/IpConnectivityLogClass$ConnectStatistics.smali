.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectStatistics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;


# instance fields
.field public connectBlockingCount:I

.field public connectCount:I

.field public errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public ipv6AddrCount:I

.field public latenciesMs:[I

.field public nonBlockingLatenciesMs:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    aget v5, v5, v1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_6

    move v1, v0

    move v0, v3

    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    invoke-static {v1, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    nop

    :goto_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    aget v4, v4, v3

    nop

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    add-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_9
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_13

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_e

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_9

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_19

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v6, v6

    :goto_2
    add-int v7, v6, v4

    new-array v7, v7, [I

    if-eqz v6, :cond_3

    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    invoke-static {v8, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    array-length v2, v7

    if-ge v6, v2, :cond_4

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_d

    :cond_5
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v3, v3

    :goto_4
    add-int v4, v3, v1

    new-array v4, v4, [I

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_5
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_8

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v4, v3

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    goto/16 :goto_d

    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    goto/16 :goto_d

    :cond_a
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    :goto_6
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_7
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_d

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto/16 :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v6, :cond_10

    move v6, v2

    goto :goto_9

    :cond_10
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v6, v6

    :goto_9
    add-int v7, v6, v4

    new-array v7, v7, [I

    if-eqz v6, :cond_11

    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-static {v8, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_a
    array-length v2, v7

    if-ge v6, v2, :cond_12

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_d

    :cond_13
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    if-nez v3, :cond_14

    move v3, v2

    goto :goto_b

    :cond_14
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v3, v3

    :goto_b
    add-int v4, v3, v1

    new-array v4, v4, [I

    if-eqz v3, :cond_15

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_c
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_16

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    aput v2, v4, v3

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    goto :goto_d

    :cond_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    goto :goto_d

    :cond_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    nop

    :cond_19
    :goto_d
    goto/16 :goto_0

    :cond_1a
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v0, v0

    if-lez v0, :cond_6

    nop

    :goto_2
    move v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->nonBlockingLatenciesMs:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
