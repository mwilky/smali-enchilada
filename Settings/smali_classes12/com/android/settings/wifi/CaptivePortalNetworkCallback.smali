.class final Lcom/android/settings/wifi/CaptivePortalNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CaptivePortalNetworkCallback.java"


# instance fields
.field private final mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

.field private mIsCaptivePortal:Z

.field private final mNetwork:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public isCaptivePortal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    return v0
.end method

.method public isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setCaptivePortal(Z)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    :cond_0
    return-void
.end method
