.class public Landroid/net/lowpan/LowpanScanner;
.super Ljava/lang/Object;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanScanner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

.field private mChannelMask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/lowpan/LowpanScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanScanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-void
.end method

.method static synthetic access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createScanOptionMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;->INSTANCE:Landroid/net/lowpan/-$$Lambda$LowpanScanner$b0nnjTe02JXonssLsm5Kp4EaFqs;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    sget-object v1, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    iget v2, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$createScanOptionMap$0(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addChannel(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChannelMask()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    return v0
.end method

.method public setCallback(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanScanner;->setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    iput-object p2, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setChannelMask(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-void
.end method

.method public setTxPower(I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    return-void
.end method

.method public startEnergyScan()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/LowpanScanner$2;

    invoke-direct {v1, p0}, Landroid/net/lowpan/LowpanScanner$2;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, v0, v1}, Landroid/net/lowpan/ILowpanInterface;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public startNetScan()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/LowpanScanner$1;

    invoke-direct {v1, p0}, Landroid/net/lowpan/LowpanScanner$1;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v2, v0, v1}, Landroid/net/lowpan/ILowpanInterface;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public stopEnergyScan()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->stopEnergyScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopNetScan()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->stopNetScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
