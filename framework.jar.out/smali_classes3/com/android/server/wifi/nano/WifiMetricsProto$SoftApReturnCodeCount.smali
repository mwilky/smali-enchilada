.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftApReturnCodeCount"
.end annotation


# static fields
.field public static final SOFT_AP_FAILED_GENERAL_ERROR:I = 0x2

.field public static final SOFT_AP_FAILED_NO_CHANNEL:I = 0x3

.field public static final SOFT_AP_RETURN_CODE_UNKNOWN:I = 0x0

.field public static final SOFT_AP_STARTED_SUCCESSFULLY:I = 0x1

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;


# instance fields
.field public count:I

.field public returnCode:I

.field public startResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3887
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 3888
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 3889
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 2

    .line 3867
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v0, :cond_1

    .line 3868
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3870
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v1, :cond_0

    .line 3871
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 3873
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3875
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3979
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3973
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1

    .line 3892
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    .line 3893
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    .line 3894
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    .line 3895
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->cachedSize:I

    .line 3896
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .line 3916
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 3917
    .local v0, "size":I
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    if-eqz v1, :cond_0

    .line 3918
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    .line 3919
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3921
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    if-eqz v1, :cond_1

    .line 3922
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    .line 3923
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3925
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    if-eqz v1, :cond_2

    .line 3926
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    .line 3927
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3929
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

    .line 3855
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 2
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3937
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3938
    .local v0, "tag":I
    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 3942
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3943
    return-object p0

    .line 3956
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3957
    .local v1, "value":I
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3962
    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    .line 3965
    :goto_1
    goto :goto_2

    .line 3952
    .end local v1    # "value":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    .line 3953
    goto :goto_2

    .line 3948
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    .line 3949
    nop

    .line 3968
    .end local v0    # "tag":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 3940
    .restart local v0    # "tag":I
    :cond_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3902
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    if-eqz v0, :cond_0

    .line 3903
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3905
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    if-eqz v0, :cond_1

    .line 3906
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3908
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    if-eqz v0, :cond_2

    .line 3909
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3911
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 3912
    return-void
.end method
