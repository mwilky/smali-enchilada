.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeupStats"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;


# instance fields
.field public applicationWakeups:J

.field public durationSec:J

.field public ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public l2BroadcastCount:J

.field public l2MulticastCount:J

.field public l2UnicastCount:J

.field public noUidWakeups:J

.field public nonApplicationWakeups:J

.field public rootWakeups:J

.field public systemWakeups:J

.field public totalWakeups:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

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
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v0

    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v5, v5

    if-ge v0, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v5, v5, v0

    if-eqz v5, :cond_7

    const/16 v6, 0x8

    invoke-static {v6, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_b

    nop

    :goto_1
    move v1, v2

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    if-eqz v2, :cond_a

    const/16 v5, 0x9

    invoke-static {v5, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_a
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_b
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    const/16 v1, 0xb

    iget-wide v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    invoke-static {v1, v5, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_6

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    goto/16 :goto_5

    :sswitch_3
    const/16 v2, 0x4a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto/16 :goto_5

    :sswitch_4
    const/16 v2, 0x42

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto :goto_5

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    goto :goto_5

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    goto :goto_5

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    goto :goto_5

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    goto :goto_5

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    goto :goto_5

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    goto :goto_5

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    goto :goto_5

    :sswitch_c
    return-object p0

    :cond_6
    :goto_5
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_3
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v4, v4

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    const/16 v5, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_a

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    if-eqz v1, :cond_9

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/16 v0, 0xa

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_b
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_c
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_d
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
