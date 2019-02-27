.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftApConnectedClientsEvent"
.end annotation


# static fields
.field public static final BANDWIDTH_160:I = 0x6

.field public static final BANDWIDTH_20:I = 0x2

.field public static final BANDWIDTH_20_NOHT:I = 0x1

.field public static final BANDWIDTH_40:I = 0x3

.field public static final BANDWIDTH_80:I = 0x4

.field public static final BANDWIDTH_80P80:I = 0x5

.field public static final BANDWIDTH_INVALID:I = 0x0

.field public static final NUM_CLIENTS_CHANGED:I = 0x2

.field public static final SOFT_AP_DOWN:I = 0x1

.field public static final SOFT_AP_UP:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;


# instance fields
.field public channelBandwidth:I

.field public channelFrequency:I

.field public eventType:I

.field public numConnectedClients:I

.field public timeStampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6450
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 6451
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 6452
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 2

    .line 6424
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v0, :cond_1

    .line 6425
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6427
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v1, :cond_0

    .line 6428
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    .line 6430
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6432
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6576
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 6570
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 3

    .line 6455
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    .line 6456
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    .line 6457
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    .line 6458
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    .line 6459
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    .line 6460
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->cachedSize:I

    .line 6461
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 6487
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 6488
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    if-eqz v1, :cond_0

    .line 6489
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    .line 6490
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6492
    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 6493
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    .line 6494
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6496
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    if-eqz v1, :cond_2

    .line 6497
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    .line 6498
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6500
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    if-eqz v1, :cond_3

    .line 6501
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    .line 6502
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6504
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    if-eqz v1, :cond_4

    .line 6505
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    .line 6506
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6508
    :cond_4
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6404
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6516
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 6517
    .local v0, "tag":I
    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 6521
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6522
    return-object p0

    .line 6550
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6551
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 6559
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    .line 6562
    :goto_1
    goto :goto_3

    .line 6546
    .end local v1    # "value":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    .line 6547
    goto :goto_3

    .line 6542
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    .line 6543
    goto :goto_3

    .line 6538
    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    .line 6539
    goto :goto_3

    .line 6527
    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 6528
    .restart local v1    # "value":I
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 6532
    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    .line 6535
    :goto_2
    nop

    .line 6565
    .end local v0    # "tag":I
    .end local v1    # "value":I
    :cond_5
    :goto_3
    goto :goto_0

    .line 6519
    .restart local v0    # "tag":I
    :cond_6
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6467
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    if-eqz v0, :cond_0

    .line 6468
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6470
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 6471
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6473
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    if-eqz v0, :cond_2

    .line 6474
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6476
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    if-eqz v0, :cond_3

    .line 6477
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6479
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    if-eqz v0, :cond_4

    .line 6480
    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6482
    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 6483
    return-void
.end method
