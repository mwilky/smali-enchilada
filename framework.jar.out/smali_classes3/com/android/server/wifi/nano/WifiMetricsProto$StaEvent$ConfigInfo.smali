.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;


# instance fields
.field public allowedAuthAlgorithms:I

.field public allowedGroupCiphers:I

.field public allowedKeyManagement:I

.field public allowedPairwiseCiphers:I

.field public allowedProtocols:I

.field public hasEverConnected:Z

.field public hiddenSsid:Z

.field public isEphemeral:Z

.field public isPasspoint:Z

.field public scanFreq:I

.field public scanRssi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_9

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .locals 2
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

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    goto :goto_1

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    goto :goto_1

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    goto :goto_1

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    goto :goto_1

    :sswitch_b
    return-object p0

    :cond_0
    :goto_1
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_9

    const/16 v0, 0xa

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
