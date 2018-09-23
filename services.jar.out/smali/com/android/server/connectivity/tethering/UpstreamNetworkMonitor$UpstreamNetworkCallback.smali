.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field private final mCallbackType:I

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$100(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$200(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    return-void
.end method
