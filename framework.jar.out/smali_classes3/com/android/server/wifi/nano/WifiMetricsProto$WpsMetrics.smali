.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsMetrics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;


# instance fields
.field public numWpsAttempts:I

.field public numWpsCancellation:I

.field public numWpsOtherConnectionFailure:I

.field public numWpsOverlapFailure:I

.field public numWpsStartFailure:I

.field public numWpsSuccess:I

.field public numWpsSupplicantFailure:I

.field public numWpsTimeoutFailure:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6621
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 6622
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 6623
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
    .locals 2

    .line 6586
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-nez v0, :cond_1

    .line 6587
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6589
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    if-nez v1, :cond_0

    .line 6590
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    .line 6592
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6594
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6765
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6759
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
    .locals 1

    .line 6626
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    .line 6627
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    .line 6628
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    .line 6629
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    .line 6630
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    .line 6631
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    .line 6632
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    .line 6633
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    .line 6634
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->cachedSize:I

    .line 6635
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 6670
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 6671
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    if-eqz v1, :cond_0

    .line 6672
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    .line 6673
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6675
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    if-eqz v1, :cond_1

    .line 6676
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    .line 6677
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6679
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    if-eqz v1, :cond_2

    .line 6680
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    .line 6681
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6683
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    if-eqz v1, :cond_3

    .line 6684
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    .line 6685
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6687
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    if-eqz v1, :cond_4

    .line 6688
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    .line 6689
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6691
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    if-eqz v1, :cond_5

    .line 6692
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    .line 6693
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6695
    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    if-eqz v1, :cond_6

    .line 6696
    const/4 v1, 0x7

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    .line 6697
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6699
    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    if-eqz v1, :cond_7

    .line 6700
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    .line 6701
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6703
    :cond_7
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6580
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6711
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6712
    .local v0, "tag":I
    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 6716
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 6717
    return-object p0

    .line 6750
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 6746
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    .line 6747
    goto :goto_1

    .line 6742
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    .line 6743
    goto :goto_1

    .line 6738
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    .line 6739
    goto :goto_1

    .line 6734
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    .line 6735
    goto :goto_1

    .line 6730
    :cond_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    .line 6731
    goto :goto_1

    .line 6726
    :cond_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    .line 6727
    goto :goto_1

    .line 6722
    :cond_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    .line 6723
    nop

    .line 6754
    .end local v0    # "tag":I
    :cond_8
    :goto_1
    goto :goto_0

    .line 6714
    .restart local v0    # "tag":I
    :cond_9
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6641
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    if-eqz v0, :cond_0

    .line 6642
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsAttempts:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6644
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    if-eqz v0, :cond_1

    .line 6645
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSuccess:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6647
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    if-eqz v0, :cond_2

    .line 6648
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsStartFailure:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6650
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    if-eqz v0, :cond_3

    .line 6651
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOverlapFailure:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6653
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    if-eqz v0, :cond_4

    .line 6654
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsTimeoutFailure:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6656
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    if-eqz v0, :cond_5

    .line 6657
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsOtherConnectionFailure:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6659
    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    if-eqz v0, :cond_6

    .line 6660
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsSupplicantFailure:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6662
    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    if-eqz v0, :cond_7

    .line 6663
    const/16 v0, 0x8

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WpsMetrics;->numWpsCancellation:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6665
    :cond_7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6666
    return-void
.end method
