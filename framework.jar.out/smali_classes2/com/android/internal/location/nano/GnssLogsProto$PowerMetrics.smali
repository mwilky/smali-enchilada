.class public final Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "GnssLogsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/nano/GnssLogsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerMetrics"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;


# instance fields
.field public energyConsumedMah:D

.field public loggingDurationMs:J

.field public timeInSignalQualityLevelMs:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->clear()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 292
    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 2

    .line 270
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-nez v0, :cond_1

    .line 271
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    sget-object v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    sput-object v1, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    .line 276
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 278
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->_emptyArray:[Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 1
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 2

    .line 295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 297
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 298
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->cachedSize:I

    .line 299
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .line 322
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 323
    .local v0, "size":I
    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 324
    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 325
    invoke-static {v2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_0
    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 328
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 329
    const/4 v1, 0x2

    iget-wide v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 330
    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v1, v1

    if-lez v1, :cond_3

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 335
    iget-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v4, v4, v3

    .line 336
    .local v4, "element":J
    nop

    .line 337
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 334
    .end local v4    # "element":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "i":I
    :cond_2
    add-int/2addr v0, v1

    .line 340
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v3, v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 342
    .end local v1    # "dataSize":I
    :cond_3
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 10
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 351
    .local v0, "tag":I
    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 355
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 356
    return-object p0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    .line 387
    .local v1, "length":I
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 389
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 390
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 391
    .local v5, "startPos":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_1

    .line 392
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 393
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 395
    :cond_1
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 396
    iget-object v6, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v6, v6

    .line 397
    .local v6, "i":I
    :goto_2
    add-int v7, v6, v4

    new-array v7, v7, [J

    .line 398
    .local v7, "newArray":[J
    if-eqz v6, :cond_3

    .line 399
    iget-object v8, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    invoke-static {v8, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    :cond_3
    :goto_3
    array-length v2, v7

    if-ge v6, v2, :cond_4

    .line 402
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v8

    aput-wide v8, v7, v6

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 404
    :cond_4
    iput-object v7, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 405
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 406
    goto :goto_6

    .line 369
    .end local v1    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v6    # "i":I
    .end local v7    # "newArray":[J
    :cond_5
    nop

    .line 370
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v1

    .line 371
    .local v1, "arrayLength":I
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v3, v3

    .line 372
    .local v3, "i":I
    :goto_4
    add-int v4, v3, v1

    new-array v4, v4, [J

    .line 373
    .local v4, "newArray":[J
    if-eqz v3, :cond_7

    .line 374
    iget-object v5, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    :cond_7
    :goto_5
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_8

    .line 377
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 378
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 381
    :cond_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 382
    iput-object v4, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    .line 383
    goto :goto_6

    .line 365
    .end local v1    # "arrayLength":I
    .end local v3    # "i":I
    .end local v4    # "newArray":[J
    :cond_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    .line 366
    goto :goto_6

    .line 361
    :cond_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    .line 362
    nop

    .line 409
    .end local v0    # "tag":I
    :cond_b
    :goto_6
    goto/16 :goto_0

    .line 353
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

    .line 305
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 306
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 308
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 310
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v0, v0

    if-lez v0, :cond_2

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 314
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 318
    return-void
.end method
