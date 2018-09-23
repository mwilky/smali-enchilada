.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private final mStart:J

.field private final mStats:Landroid/net/metrics/ApfStats;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .locals 2

    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    new-instance v0, Landroid/net/metrics/ApfStats;

    invoke-direct {v0}, Landroid/net/metrics/ApfStats;-><init>()V

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method

.method private logStats()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-wide v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStart:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Landroid/net/metrics/ApfStats;->durationMs:J

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$100(Landroid/net/apf/ApfFilter;)Landroid/net/apf/ApfCapabilities;

    move-result-object v3

    iget v3, v3, Landroid/net/apf/ApfCapabilities;->maximumApfProgramSize:I

    iput v3, v2, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$200(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v3}, Landroid/net/apf/ApfFilter;->access$300(Landroid/net/apf/ApfFilter;)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-static {v2}, Landroid/net/apf/ApfFilter;->access$400(Landroid/net/apf/ApfFilter;)Landroid/net/metrics/IpConnectivityLog;

    move-result-object v2

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    invoke-virtual {v2, v3}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/os/Parcelable;)Z

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-static {v2, v3, v4}, Landroid/net/apf/ApfFilter;->access$500(Landroid/net/apf/ApfFilter;J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    .locals 2

    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->receivedRas:I

    sget-object v0, Landroid/net/apf/ApfFilter$2;->$SwitchMap$android$net$apf$ApfFilter$ProcessRaResult:[I

    invoke-virtual {p1}, Landroid/net/apf/ApfFilter$ProcessRaResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->programUpdates:I

    return-void

    :pswitch_2
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    return-void

    :pswitch_3
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->parseErrors:I

    return-void

    :pswitch_4
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->droppedRas:I

    return-void

    :pswitch_5
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStats:Landroid/net/metrics/ApfStats;

    iget v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/metrics/ApfStats;->matchingRas:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public halt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string v1, "begin monitoring"

    invoke-static {v0, v1}, Landroid/net/apf/ApfFilter;->access$000(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-virtual {v1, v2, v0}, Landroid/net/apf/ApfFilter;->processRa([BI)Landroid/net/apf/ApfFilter$ProcessRaResult;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/apf/ApfFilter$ReceiveThread;->updateStats(Landroid/net/apf/ApfFilter$ProcessRaResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v1, :cond_0

    const-string v1, "ApfFilter"

    const-string v2, "Read error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/net/apf/ApfFilter$ReceiveThread;->logStats()V

    return-void
.end method
