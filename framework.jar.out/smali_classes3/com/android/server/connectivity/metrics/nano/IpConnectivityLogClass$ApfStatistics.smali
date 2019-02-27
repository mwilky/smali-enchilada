.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApfStatistics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;


# instance fields
.field public droppedRas:I

.field public durationMs:J

.field public hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public matchingRas:I

.field public maxProgramSize:I

.field public parseErrors:I

.field public programUpdates:I

.field public programUpdatesAll:I

.field public programUpdatesAllowingMulticast:I

.field public receivedRas:I

.field public totalPacketDropped:I

.field public totalPacketProcessed:I

.field public zeroLifetimeRas:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

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
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v1, :cond_9

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    const/16 v3, 0xe

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    return-object p0

    :sswitch_0
    const/16 v1, 0x72

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    :goto_1
    add-int v4, v2, v1

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v3, v4, v2

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v3, v4, v2

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto :goto_3

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    goto :goto_3

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    goto :goto_3

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    goto :goto_3

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    goto :goto_3

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    goto :goto_3

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    goto :goto_3

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    goto :goto_3

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    goto :goto_3

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    goto :goto_3

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    goto :goto_3

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    goto :goto_3

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    goto :goto_3

    :sswitch_d
    return-object p0

    :cond_3
    :goto_3
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x18 -> :sswitch_a
        0x28 -> :sswitch_9
        0x30 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x48 -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x68 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketProcessed:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    if-eqz v0, :cond_b

    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->totalPacketDropped:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->hardwareCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_d
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
