.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    const/4 v0, 0x0

    if-lez v10, :cond_0

    new-array v0, v10, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    move-object v11, v0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    invoke-static {v7, v8, v9, v11}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    invoke-static {v7, v8, v9, v11}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v12, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-object v0, v12

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object v12
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p1

    return-object p1
.end method
