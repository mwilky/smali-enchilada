.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v5, 0x0

    move-object v0, v10

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;)V

    return-object v10
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p1

    return-object p1
.end method
