.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;


# instance fields
.field public initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public lockedNetworksAtInitialize:I

.field public lockedNetworksAtStart:I

.field public resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public startTimeMillis:J

.field public unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

.field public wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_6

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_8

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    nop

    :cond_b
    :goto_1
    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
