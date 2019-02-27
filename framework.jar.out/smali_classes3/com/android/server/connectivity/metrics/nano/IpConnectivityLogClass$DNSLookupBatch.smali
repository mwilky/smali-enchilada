.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLookupBatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;


# instance fields
.field public eventTypes:[I

.field public getaddrinfoErrorCount:J

.field public getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public getaddrinfoQueryCount:J

.field public gethostbynameErrorCount:J

.field public gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public gethostbynameQueryCount:J

.field public latenciesMs:[I

.field public networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

.field public returnCodes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

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
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 2

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v5, v5, v1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v4, v1

    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v5, v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v5, v5, v1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    move v4, v1

    move v1, v3

    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v5, v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v5, v5, v1

    nop

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_6
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    const/4 v1, 0x5

    iget-wide v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    invoke-static {v1, v6, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    iget-wide v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    invoke-static {v1, v6, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    const/4 v1, 0x7

    iget-wide v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    invoke-static {v1, v6, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v0

    move v0, v3

    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v0

    if-eqz v2, :cond_b

    const/16 v4, 0x9

    invoke-static {v4, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    move v0, v1

    :cond_d
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-lez v1, :cond_f

    nop

    :goto_4
    move v1, v3

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v1

    if-eqz v2, :cond_e

    const/16 v3, 0xa

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e
    add-int/lit8 v3, v1, 0x1

    goto :goto_4

    :cond_f
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 9
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

    if-nez v1, :cond_1c

    return-object p0

    :sswitch_0
    const/16 v2, 0x52

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

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

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto/16 :goto_14

    :sswitch_1
    const/16 v2, 0x4a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

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

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto/16 :goto_14

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    goto/16 :goto_14

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    goto/16 :goto_14

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    goto/16 :goto_14

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    goto/16 :goto_14

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v6, :cond_7

    move v6, v1

    goto :goto_6

    :cond_7
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v6, v6

    :goto_6
    add-int v7, v6, v4

    new-array v7, v7, [I

    if-eqz v6, :cond_8

    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_7
    array-length v1, v7

    if-ge v6, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_14

    :sswitch_7
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_8

    :cond_a
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v3, v3

    :goto_8
    add-int v4, v3, v2

    new-array v4, v4, [I

    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_9
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_c

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    goto/16 :goto_14

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v6, :cond_e

    move v6, v1

    goto :goto_b

    :cond_e
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v6, v6

    :goto_b
    add-int v7, v6, v4

    new-array v7, v7, [I

    if-eqz v6, :cond_f

    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_c
    array-length v1, v7

    if-ge v6, v1, :cond_10

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_14

    :sswitch_9
    const/16 v2, 0x18

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v3, :cond_11

    move v3, v1

    goto :goto_d

    :cond_11
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v3, v3

    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [I

    if-eqz v3, :cond_12

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_13

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    goto/16 :goto_14

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_14

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v6, :cond_15

    move v6, v1

    goto :goto_10

    :cond_15
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v6, v6

    :goto_10
    add-int v7, v6, v4

    new-array v7, v7, [I

    if-eqz v6, :cond_16

    iget-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v8, v1, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_11
    array-length v1, v7

    if-ge v6, v1, :cond_17

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_17
    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_14

    :sswitch_b
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_12

    :cond_18
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v3, v3

    :goto_12
    add-int v4, v3, v2

    new-array v4, v4, [I

    if-eqz v3, :cond_19

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_13
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1a

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    goto :goto_14

    :sswitch_c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    :cond_1b
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_14

    :sswitch_d
    return-object p0

    :cond_1c
    :goto_14
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x10 -> :sswitch_b
        0x12 -> :sswitch_a
        0x18 -> :sswitch_9
        0x1a -> :sswitch_8
        0x20 -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x4a -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_4
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_5
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v0, v0

    if-lez v0, :cond_b

    nop

    :goto_4
    move v0, v1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v1, v0, 0x1

    goto :goto_4

    :cond_b
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
