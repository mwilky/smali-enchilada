.class Landroid/net/lowpan/LowpanScanner$1;
.super Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startNetScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanScanner;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanScanner$Callback;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method static synthetic lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;

    invoke-direct {v0, v1, p1}, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$47buDsybUOrvvSl0JOZR_FC9ISg;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNetScanFinished()V
    .locals 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$lUw1npYnRpaO9LS5odGyASQYaic;

    invoke-direct {v0, v1}, Landroid/net/lowpan/-$$Lambda$LowpanScanner$1$lUw1npYnRpaO9LS5odGyASQYaic;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
