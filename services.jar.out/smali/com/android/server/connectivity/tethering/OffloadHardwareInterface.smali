.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;,
        Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_TETHER_OFFLOAD_DISABLED:I = 0x0

.field private static final NO_INTERFACE_NAME:Ljava/lang/String; = ""

.field private static final NO_IPV4_ADDRESS:Ljava/lang/String; = ""

.field private static final NO_IPV4_GATEWAY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;

.field private static final YIELDS:Ljava/lang/String; = " -> "


# instance fields
.field private mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

.field private mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->networkProtocolToOsConstant(I)I

    move-result v0

    return v0
.end method

.method private static native configOffload()Z
.end method

.method static synthetic lambda$addDownstreamPrefix$6(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getForwardedStats$2(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    move-wide v0, p3

    nop

    :cond_1
    iput-wide v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    return-void
.end method

.method static synthetic lambda$initOffloadControl$0(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$removeDownstreamPrefix$7(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$setDataLimit$4(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$setLocalPrefixes$3(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$setUpstreamParameters$5(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$stopOffloadControl$1(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopOffload failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static networkProtocolToOsConstant(I)I
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    return v0

    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    return v0

    :cond_1
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    return v0
.end method

.method private record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, v0}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "addDownstreamPrefix(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$GhKYJ09_bq-n9xoRpQeCc3ZpQPU;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v2, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v2

    :catch_0
    move-exception v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public getDefaultTetherOffloadDisabled()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    .locals 5

    const-string v0, "getForwardedStats(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v3, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;

    invoke-direct {v3, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$nu77bP4WbZU9UPvjulauQE3Dm30;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    invoke-interface {v2, p1, v3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public initOffloadConfig()Z
    .locals 1

    invoke-static {}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->configOffload()Z

    move-result v0

    return v0
.end method

.method public initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z
    .locals 6

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->getService()Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering IOffloadControl.getService() returned null"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tethering offload control not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo v0, "initOffloadControl(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_1

    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;Landroid/net/util/SharedLog;)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    new-instance v5, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;

    invoke-direct {v5, v2}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$324leYOM3BvGJiK4Wade-B0d5jE;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, v4, v5}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v1, v2, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    :catch_1
    move-exception v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "removeDownstreamPrefix(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$w6w__dI5-bH4oSI_P9WIdOzlG28;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v2, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v2

    :catch_0
    move-exception v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setDataLimit(Ljava/lang/String;J)Z
    .locals 5

    const-string/jumbo v0, "setDataLimit(%s, %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$4gz9PGx-iHz6VaJglXvPXV_YCTo;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v3, p1, p2, p3, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v2, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v2

    :catch_0
    move-exception v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setLocalPrefixes(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "setLocalPrefixes([%s])"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, ","

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v4, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;

    invoke-direct {v4, v1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$IpWViosH4sGe7yz1VTujaEKIDNQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    invoke-interface {v2, p1, v4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v2, v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v2

    :catch_0
    move-exception v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object p1, v0

    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    move-object p2, v0

    if-eqz p3, :cond_2

    move-object v0, p3

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    move-object p3, v0

    if-eqz p4, :cond_3

    move-object v0, p4

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    move-object p4, v0

    const-string/jumbo v0, "setUpstreamParameters(%s, %s, %s, [%s])"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v1, v7

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    const-string v3, ","

    invoke-static {v3, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$1;)V

    move-object v8, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v6, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;

    invoke-direct {v6, v8}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$2RWDK-fyqU5SThZDqBkZ1L_XSJA;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-direct {p0, v0, v8}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;)V

    iget-boolean v1, v8, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$CbResults;->success:Z

    return v1

    :catch_0
    move-exception v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v7
.end method

.method public stopOffloadControl()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadHardwareInterface$AOzzTRw82KskEfgGFRGSy26wGv8;-><init>(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;)V

    invoke-interface {v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to stopOffload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mOffloadControl:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mTetheringOffloadCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$TetheringOffloadCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mControlCallback:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "stopOffloadControl()"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method
