.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiAwareLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;
    }
.end annotation


# static fields
.field public static final ALREADY_ENABLED:I = 0xb

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xc

.field public static final INTERNAL_FAILURE:I = 0x2

.field public static final INVALID_ARGS:I = 0x6

.field public static final INVALID_NDP_ID:I = 0x8

.field public static final INVALID_PEER_ID:I = 0x7

.field public static final INVALID_SESSION_ID:I = 0x4

.field public static final NAN_NOT_ALLOWED:I = 0x9

.field public static final NO_OTA_ACK:I = 0xa

.field public static final NO_RESOURCES_AVAILABLE:I = 0x5

.field public static final PROTOCOL_FAILURE:I = 0x3

.field public static final SUCCESS:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_HAL_STATUS:I = 0xe

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xd

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;


# instance fields
.field public availableTimeMs:J

.field public enabledTimeMs:J

.field public histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public maxConcurrentAttachSessionsInApp:I

.field public maxConcurrentDiscoverySessionsInApp:I

.field public maxConcurrentDiscoverySessionsInSystem:I

.field public maxConcurrentNdiInApp:I

.field public maxConcurrentNdiInSystem:I

.field public maxConcurrentNdpInApp:I

.field public maxConcurrentNdpInSystem:I

.field public maxConcurrentNdpPerNdi:I

.field public maxConcurrentPublishInApp:I

.field public maxConcurrentPublishInSystem:I

.field public maxConcurrentPublishWithRangingInApp:I

.field public maxConcurrentPublishWithRangingInSystem:I

.field public maxConcurrentSecureNdpInApp:I

.field public maxConcurrentSecureNdpInSystem:I

.field public maxConcurrentSubscribeInApp:I

.field public maxConcurrentSubscribeInSystem:I

.field public maxConcurrentSubscribeWithRangingInApp:I

.field public maxConcurrentSubscribeWithRangingInSystem:I

.field public ndpCreationTimeMsMax:J

.field public ndpCreationTimeMsMin:J

.field public ndpCreationTimeMsNumSamples:J

.field public ndpCreationTimeMsSum:J

.field public ndpCreationTimeMsSumOfSq:J

.field public numApps:I

.field public numAppsUsingIdentityCallback:I

.field public numAppsWithDiscoverySessionFailureOutOfResources:I

.field public numMatchesWithRanging:I

.field public numMatchesWithoutRangingForRangingEnabledSubscribes:I

.field public numSubscribesWithRanging:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

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
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v1, :cond_7

    const/4 v1, 0x6

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v1, :cond_a

    const/16 v1, 0x9

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_e

    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_c

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    move v0, v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_11

    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_10

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_f

    const/16 v4, 0xc

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    move v0, v1

    :cond_11
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v1, :cond_12

    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v0

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_14

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_13

    const/16 v4, 0xe

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    move v0, v1

    :cond_15
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_18

    move v1, v0

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_17

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_16

    const/16 v4, 0xf

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move v0, v1

    :cond_18
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v1, :cond_19

    const/16 v1, 0x13

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v1, :cond_1a

    const/16 v1, 0x14

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v1, :cond_1b

    const/16 v1, 0x15

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v1, :cond_1c

    const/16 v1, 0x16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v1, :cond_1d

    const/16 v1, 0x17

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v1, :cond_1e

    const/16 v1, 0x18

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v1, :cond_1f

    const/16 v1, 0x19

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_22

    move v1, v0

    move v0, v2

    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_21

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_20

    const/16 v4, 0x1a

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    move v0, v1

    :cond_22
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_25

    move v1, v0

    move v0, v2

    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_23

    const/16 v4, 0x1b

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    move v0, v1

    :cond_25
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_28

    move v1, v0

    move v0, v2

    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_26

    const/16 v4, 0x1c

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_27
    move v0, v1

    :cond_28
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_2b

    move v1, v0

    move v0, v2

    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_29

    const/16 v4, 0x1d

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2a
    move v0, v1

    :cond_2b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_2e

    move v1, v0

    move v0, v2

    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2c

    const/16 v4, 0x1e

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2d
    move v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_31

    move v1, v0

    move v0, v2

    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_30

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2f

    const/16 v4, 0x1f

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_30
    move v0, v1

    :cond_31
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_34

    move v1, v0

    move v0, v2

    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_33

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_32

    const/16 v4, 0x20

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_33
    move v0, v1

    :cond_34
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_37

    move v1, v0

    move v0, v2

    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_36

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_35

    const/16 v4, 0x21

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_36
    move v0, v1

    :cond_37
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_38

    const/16 v1, 0x22

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_39

    const/16 v1, 0x23

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_39
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3a

    const/16 v1, 0x24

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3a
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3b

    const/16 v1, 0x25

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3b
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3c

    const/16 v1, 0x26

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3d

    const/16 v1, 0x27

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3e

    const/16 v1, 0x28

    iget-wide v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    invoke-static {v1, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    if-eqz v1, :cond_3f

    const/16 v1, 0x29

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    if-eqz v1, :cond_40

    const/16 v1, 0x2a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    if-eqz v1, :cond_41

    const/16 v1, 0x2b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_41
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    if-eqz v1, :cond_42

    const/16 v1, 0x2c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_45

    move v1, v0

    move v0, v2

    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v0, v3, :cond_44

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v3, v3, v0

    if-eqz v3, :cond_43

    const/16 v4, 0x2d

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_44
    move v0, v1

    :cond_45
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-lez v1, :cond_47

    nop

    :goto_e
    move v1, v2

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v1, v2, :cond_47

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v1

    if-eqz v2, :cond_46

    const/16 v3, 0x2e

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_46
    add-int/lit8 v2, v1, 0x1

    goto :goto_e

    :cond_47
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    if-eqz v1, :cond_48

    const/16 v1, 0x2f

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    if-eqz v1, :cond_49

    const/16 v1, 0x30

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_49
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    if-eqz v1, :cond_4a

    const/16 v1, 0x31

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
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

    if-nez v1, :cond_2d

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    goto/16 :goto_1f

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    goto/16 :goto_1f

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    goto/16 :goto_1f

    :sswitch_3
    const/16 v2, 0x172

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_1
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_4
    const/16 v2, 0x16a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_3
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_5

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    goto/16 :goto_1f

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    goto/16 :goto_1f

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    goto/16 :goto_1f

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    goto/16 :goto_1f

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    goto/16 :goto_1f

    :sswitch_a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    goto/16 :goto_1f

    :sswitch_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    goto/16 :goto_1f

    :sswitch_c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    goto/16 :goto_1f

    :sswitch_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    goto/16 :goto_1f

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    goto/16 :goto_1f

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    goto/16 :goto_1f

    :sswitch_10
    const/16 v2, 0x10a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_5
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_11
    const/16 v2, 0x102

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_7
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_b

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_12
    const/16 v2, 0xfa

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_9

    :cond_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_9
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_d

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_e

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_13
    const/16 v2, 0xf2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_b

    :cond_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_10

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_11

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_11
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_14
    const/16 v2, 0xea

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_12

    move v3, v1

    goto :goto_d

    :cond_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_13

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_14

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_14
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_15
    const/16 v2, 0xe2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_f

    :cond_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_f
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_16

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_10
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_17

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_17
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_16
    const/16 v2, 0xda

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_18

    move v3, v1

    goto :goto_11

    :cond_18
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_11
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_19

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_12
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1a

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1a
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_17
    const/16 v2, 0xd2

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v3, :cond_1b

    move v3, v1

    goto :goto_13

    :cond_1b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    :goto_13
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_1c

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_14
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_1d

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1d
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1f

    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    goto/16 :goto_1f

    :sswitch_19
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    goto/16 :goto_1f

    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    goto/16 :goto_1f

    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    goto/16 :goto_1f

    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    goto/16 :goto_1f

    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    goto/16 :goto_1f

    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    goto/16 :goto_1f

    :sswitch_1f
    const/16 v2, 0x7a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_1e

    move v3, v1

    goto :goto_15

    :cond_1e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    :goto_15
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_1f

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    :goto_16
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_20

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_20
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1f

    :sswitch_20
    const/16 v2, 0x72

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_21

    move v3, v1

    goto :goto_17

    :cond_21
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    :goto_17
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_22

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    :goto_18
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_23

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_23
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1f

    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    goto/16 :goto_1f

    :sswitch_22
    const/16 v2, 0x62

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_24

    move v3, v1

    goto :goto_19

    :cond_24
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    :goto_19
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_25

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_25
    :goto_1a
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_26

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_26
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1f

    :sswitch_23
    const/16 v2, 0x5a

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_27

    move v3, v1

    goto :goto_1b

    :cond_27
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    :goto_1b
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_28

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    :goto_1c
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_29

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_29
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1f

    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    goto/16 :goto_1f

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    goto/16 :goto_1f

    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    goto/16 :goto_1f

    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    goto :goto_1f

    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    goto :goto_1f

    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    goto :goto_1f

    :sswitch_2a
    const/16 v2, 0x22

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_1d

    :cond_2a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    :goto_1d
    add-int v4, v3, v2

    new-array v4, v4, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_2b

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_1e
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_2c

    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2c
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v1, v4, v3

    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto :goto_1f

    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    goto :goto_1f

    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    goto :goto_1f

    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    goto :goto_1f

    :sswitch_2e
    return-object p0

    :cond_2d
    :goto_1f
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2e
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2c
        0x18 -> :sswitch_2b
        0x22 -> :sswitch_2a
        0x28 -> :sswitch_29
        0x30 -> :sswitch_28
        0x38 -> :sswitch_27
        0x40 -> :sswitch_26
        0x48 -> :sswitch_25
        0x50 -> :sswitch_24
        0x5a -> :sswitch_23
        0x62 -> :sswitch_22
        0x68 -> :sswitch_21
        0x72 -> :sswitch_20
        0x7a -> :sswitch_1f
        0x98 -> :sswitch_1e
        0xa0 -> :sswitch_1d
        0xa8 -> :sswitch_1c
        0xb0 -> :sswitch_1b
        0xb8 -> :sswitch_1a
        0xc0 -> :sswitch_19
        0xc8 -> :sswitch_18
        0xd2 -> :sswitch_17
        0xda -> :sswitch_16
        0xe2 -> :sswitch_15
        0xea -> :sswitch_14
        0xf2 -> :sswitch_13
        0xfa -> :sswitch_12
        0x102 -> :sswitch_11
        0x10a -> :sswitch_10
        0x110 -> :sswitch_f
        0x118 -> :sswitch_e
        0x120 -> :sswitch_d
        0x128 -> :sswitch_c
        0x130 -> :sswitch_b
        0x138 -> :sswitch_a
        0x140 -> :sswitch_9
        0x148 -> :sswitch_8
        0x150 -> :sswitch_7
        0x158 -> :sswitch_6
        0x160 -> :sswitch_5
        0x16a -> :sswitch_4
        0x172 -> :sswitch_3
        0x178 -> :sswitch_2
        0x180 -> :sswitch_1
        0x188 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v0, :cond_9

    const/16 v0, 0x9

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_b

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v0, :cond_f

    const/16 v0, 0xd

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v0, :cond_14

    const/16 v0, 0x13

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_14
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v0, :cond_15

    const/16 v0, 0x14

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v0, :cond_16

    const/16 v0, 0x15

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_16
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v0, :cond_17

    const/16 v0, 0x16

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v0, :cond_18

    const/16 v0, 0x17

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v0, :cond_19

    const/16 v0, 0x18

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v0, :cond_1a

    const/16 v0, 0x19

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_1c

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1b

    const/16 v3, 0x1a

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_1e

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1d

    const/16 v3, 0x1b

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_20

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1f

    const/16 v3, 0x1c

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_22

    move v0, v1

    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_22

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_21

    const/16 v3, 0x1d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_24

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_23

    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_24
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_26

    move v0, v1

    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_25

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_28

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_27

    const/16 v3, 0x20

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_28
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_2a

    move v0, v1

    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_29

    const/16 v3, 0x21

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b

    const/16 v0, 0x22

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2b
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2c

    const/16 v0, 0x23

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2c
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2d

    const/16 v0, 0x24

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2d
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2e

    const/16 v0, 0x25

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2e
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2f

    const/16 v0, 0x26

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2f
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    const/16 v0, 0x27

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_30
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_31

    const/16 v0, 0x28

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    if-eqz v0, :cond_32

    const/16 v0, 0x29

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    if-eqz v0, :cond_33

    const/16 v0, 0x2a

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInApp:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_33
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    if-eqz v0, :cond_34

    const/16 v0, 0x2b

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishWithRangingInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_34
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    if-eqz v0, :cond_35

    const/16 v0, 0x2c

    iget v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeWithRangingInSystem:I

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_37

    move v0, v1

    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMin:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v2, v2, v0

    if-eqz v2, :cond_36

    const/16 v3, 0x2d

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v0, v0

    if-lez v0, :cond_39

    nop

    :goto_e
    move v0, v1

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeGeofenceMax:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v1, v1, v0

    if-eqz v1, :cond_38

    const/16 v2, 0x2e

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_38
    add-int/lit8 v1, v0, 0x1

    goto :goto_e

    :cond_39
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    if-eqz v0, :cond_3a

    const/16 v0, 0x2f

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numSubscribesWithRanging:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    if-eqz v0, :cond_3b

    const/16 v0, 0x30

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithRanging:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    if-eqz v0, :cond_3c

    const/16 v0, 0x31

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numMatchesWithoutRangingForRangingEnabledSubscribes:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
