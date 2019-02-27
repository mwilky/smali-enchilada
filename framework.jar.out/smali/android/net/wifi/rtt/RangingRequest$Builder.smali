.class public final Landroid/net/wifi/rtt/RangingRequest$Builder;
.super Ljava/lang/Object;
.source "RangingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mRttPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ScanResult!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccessPoints(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/rtt/RangingRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, v1}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addAccessPoint(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null list of ScanResults!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null Responder!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addWifiAwarePeer(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    nop

    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromWifiAwarePeerMacAddressWithDefaults(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addWifiAwarePeer(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/RangingRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->fromWifiAwarePeerHandleWithDefaults(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/rtt/RangingRequest$Builder;->addResponder(Landroid/net/wifi/rtt/ResponderConfig;)Landroid/net/wifi/rtt/RangingRequest$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null peer handler (identifier)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/net/wifi/rtt/RangingRequest;
    .locals 3

    new-instance v0, Landroid/net/wifi/rtt/RangingRequest;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest$Builder;->mRttPeers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;Landroid/net/wifi/rtt/RangingRequest$1;)V

    return-object v0
.end method
