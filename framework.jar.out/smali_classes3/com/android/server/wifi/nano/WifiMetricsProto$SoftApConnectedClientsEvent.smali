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

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

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

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

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

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

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

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_5

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    :goto_1
    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    :goto_2
    nop

    :cond_5
    :goto_3
    goto :goto_0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->eventType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->timeStampMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->numConnectedClients:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelFrequency:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApConnectedClientsEvent;->channelBandwidth:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
