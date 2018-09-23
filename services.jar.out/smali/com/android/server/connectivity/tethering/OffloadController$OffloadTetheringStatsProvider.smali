.class Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffloadTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public static synthetic lambda$getTetherStats$0(Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$800(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method public static synthetic lambda$setInterfaceQuota$1(Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1200(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1200(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0, p3}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1300(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .locals 8

    new-instance v0, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$3TF0NI3fE8A-xW0925oMv3YzAOk;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$3TF0NI3fE8A-xW0925oMv3YzAOk;-><init>(Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1000(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1000(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const/4 v3, -0x5

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1100(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->access$1000(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/connectivity/tethering/-$$Lambda$OffloadController$OffloadTetheringStatsProvider$qF4r7cON-_Hdae6JwwsXWcAUxEQ;-><init>(Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
