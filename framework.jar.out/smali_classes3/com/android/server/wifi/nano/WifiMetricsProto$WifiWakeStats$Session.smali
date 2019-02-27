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

    .line 7055
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 7056
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7057
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 2

    .line 7023
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v0, :cond_1

    .line 7024
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 7026
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    if-nez v1, :cond_0

    .line 7027
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    .line 7029
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7031
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7199
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7193
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

    .line 7060
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7061
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7062
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7064
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7065
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7066
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7067
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->cachedSize:I

    .line 7068
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 7100
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 7101
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 7102
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7103
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7105
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v1, :cond_1

    .line 7106
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7107
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7109
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_2

    .line 7110
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7111
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7113
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_3

    .line 7114
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7115
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7117
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_4

    .line 7118
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7119
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7121
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v1, :cond_5

    .line 7122
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7123
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7125
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v1, :cond_6

    .line 7126
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7127
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7129
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

    .line 6918
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;
    .locals 3
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7137
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7138
    .local v0, "tag":I
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

    .line 7142
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 7143
    return-object p0

    .line 7181
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_1

    .line 7182
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7184
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .end local v0    # "tag":I
    goto :goto_1

    .line 7177
    .restart local v0    # "tag":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    .line 7178
    goto :goto_1

    .line 7170
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_4

    .line 7171
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7173
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7174
    goto :goto_1

    .line 7163
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_6

    .line 7164
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7166
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7167
    goto :goto_1

    .line 7156
    :cond_7
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-nez v1, :cond_8

    .line 7157
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    .line 7159
    :cond_8
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7160
    goto :goto_1

    .line 7152
    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    .line 7153
    goto :goto_1

    .line 7148
    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    .line 7149
    nop

    .line 7188
    .end local v0    # "tag":I
    :cond_b
    :goto_1
    goto/16 :goto_0

    .line 7140
    .restart local v0    # "tag":I
    :cond_c
    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7074
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7075
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->startTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 7077
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    if-eqz v0, :cond_1

    .line 7078
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtStart:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7080
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_2

    .line 7081
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->unlockEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7083
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_3

    .line 7084
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->wakeupEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7086
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_4

    .line 7087
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->resetEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7089
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    if-eqz v0, :cond_5

    .line 7090
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->lockedNetworksAtInitialize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 7092
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    if-eqz v0, :cond_6

    .line 7093
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session;->initializeEvent:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiWakeStats$Session$Event;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 7095
    :cond_6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7096
    return-void
.end method
