.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistogramBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;


# instance fields
.field public count:I

.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4638
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 4639
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 4640
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 2

    .line 4618
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v0, :cond_1

    .line 4619
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4621
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v1, :cond_0

    .line 4622
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    .line 4624
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4626
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4722
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4716
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 2

    .line 4643
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    .line 4644
    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    .line 4645
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    .line 4646
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->cachedSize:I

    .line 4647
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 4667
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 4668
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 4669
    const/4 v1, 0x1

    iget-wide v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    .line 4670
    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4672
    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 4673
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    .line 4674
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4676
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    if-eqz v1, :cond_2

    .line 4677
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    .line 4678
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4680
    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4612
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4688
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4689
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 4693
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4694
    return-object p0

    .line 4707
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 4703
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    .line 4704
    goto :goto_1

    .line 4699
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    .line 4700
    nop

    .line 4711
    .end local v0    # "tag":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 4691
    .restart local v0    # "tag":I
    :cond_4
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4653
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 4654
    const/4 v0, 0x1

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->start:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4656
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 4657
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->end:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4659
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    if-eqz v0, :cond_2

    .line 4660
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4662
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 4663
    return-void
.end method
