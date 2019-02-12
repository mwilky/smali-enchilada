.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingState"
.end annotation


# instance fields
.field private mAttempts:I

.field private mGatewayDectectCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

.field private mReevaluateDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    new-instance p1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mGatewayDectectCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x82006

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v4, Landroid/net/arp/OPGatewayDetector;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mGatewayDectectCallback:Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;

    invoke-direct {v4, v5, v6, v7}, Landroid/net/arp/OPGatewayDetector;-><init>(Landroid/content/Context;Landroid/net/Network;Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;)V

    invoke-static {v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$2902(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/arp/OPGatewayDetector;)Landroid/net/arp/OPGatewayDetector;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arp_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "begin to detect double mac for gateway of the wifi"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3900(Lcom/android/server/connectivity/NetworkMonitor;)V

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/arp/OPGatewayDetector;->fetchGatewayMacFromRoute()[B

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "arp_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "the current mac = null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0xfa0

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arp_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "probeGateway failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arp_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "network sisuation init failed"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arp_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gatewayDetector init failed"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1202(Lcom/android/server/connectivity/NetworkMonitor;I)I

    :cond_7
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    iput v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    return-void
.end method

.method public exit()V
    .locals 0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const v2, 0x82006

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_2

    const v2, 0x82008

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-ge v0, v1, :cond_1

    move v3, v4

    nop

    :cond_1
    return v3

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v1, "Network would not satisfy default request, not validating"

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4300(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v4

    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor;->isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, " current network is ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, " current network is portal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$3402(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)V

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v6

    invoke-virtual {v5, v2, v6, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v5, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v5, v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mAttempts:I

    if-lt v3, v1, :cond_7

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    :cond_7
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    const v3, 0x927c0

    if-le v1, v3, :cond_8

    iput v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->mReevaluateDelayMs:I

    :cond_8
    :goto_0
    return v4

    :cond_9
    :goto_1
    return v4
.end method
