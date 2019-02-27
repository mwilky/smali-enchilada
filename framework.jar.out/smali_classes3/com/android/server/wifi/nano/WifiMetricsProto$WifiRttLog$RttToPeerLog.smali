.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttToPeerLog"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;


# instance fields
.field public histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

.field public histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

.field public numApps:I

.field public numIndividualRequests:I

.field public numRequests:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_8

    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v1

    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v1

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v0

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_c

    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    move v0, v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_10

    nop

    :goto_4
    move v1, v2

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_f
    add-int/lit8 v2, v1, 0x1

    goto :goto_4

    :cond_10
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    const/16 v1, 0x18

    if-eq v0, v1, :cond_14

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_17

    return-object p0

    :cond_0
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    goto/16 :goto_b

    :cond_4
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_7

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    goto/16 :goto_b

    :cond_8
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v3, v3

    :goto_5
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_6
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_b

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    goto/16 :goto_b

    :cond_c
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_7

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    :goto_7
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v3, :cond_e

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_8
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_f

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    goto :goto_b

    :cond_10
    nop

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v3, v3

    :goto_9
    add-int v4, v3, v1

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v3, :cond_12

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_a
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_13

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;-><init>()V

    aput-object v2, v4, v3

    aget-object v2, v4, v3

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    goto :goto_b

    :cond_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    goto :goto_b

    :cond_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    goto :goto_b

    :cond_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    nop

    :cond_17
    :goto_b
    goto/16 :goto_0

    :cond_18
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numRequests:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numIndividualRequests:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->numApps:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumRequestsPerApp:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramNumPeersPerRequest:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramIndividualStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttIndividualStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_a

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramDistance:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_9

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_c

    nop

    :goto_4
    move v0, v1

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$RttToPeerLog;->histogramRequestIntervalMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiRttLog$HistogramBucket;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
