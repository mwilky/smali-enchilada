.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertReasonCount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;


# instance fields
.field public count:I

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3566
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3567
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 3568
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 2

    .line 3549
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v0, :cond_1

    .line 3550
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3552
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v1, :cond_0

    .line 3553
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 3555
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3557
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3638
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3632
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 1

    .line 3571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3572
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .line 3573
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->cachedSize:I

    .line 3574
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3591
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3592
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v1, :cond_0

    .line 3593
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3594
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3596
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v1, :cond_1

    .line 3597
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .line 3598
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3600
    :cond_1
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3543
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3608
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3609
    .local v0, "tag":I
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 3613
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3614
    return-object p0

    .line 3623
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    .end local v0    # "tag":I
    goto :goto_1

    .line 3619
    .restart local v0    # "tag":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    .line 3620
    nop

    .line 3627
    .end local v0    # "tag":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 3611
    .restart local v0    # "tag":I
    :cond_3
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

    .line 3580
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    if-eqz v0, :cond_0

    .line 3581
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->reason:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3583
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    if-eqz v0, :cond_1

    .line 3584
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3586
    :cond_1
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3587
    return-void
.end method
