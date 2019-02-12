.class final Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final GOOGLE_HTTP:I

.field private final ONEPLUS_HTTP:I

.field private final PUBLIC_HTTP:I

.field private final mHttpType:I

.field private volatile mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpChinaUrl:Ljava/net/URL;

.field final synthetic val$httpGoogleChinaUrl:Ljava/net/URL;

.field final synthetic val$httpPublicChinaUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpPublicChinaUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpGoogleChinaUrl:Ljava/net/URL;

    iput-object p7, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget-object p3, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->ONEPLUS_HTTP:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->PUBLIC_HTTP:I

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->GOOGLE_HTTP:I

    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    return-void
.end method


# virtual methods
.method public result()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .locals 4

    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpPublicChinaUrl:Ljava/net/URL;

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpGoogleChinaUrl:Ljava/net/URL;

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
