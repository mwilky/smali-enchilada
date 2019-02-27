.class Landroid/net/wifi/rtt/RangingRequest$1;
.super Ljava/lang/Object;
.source "RangingRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingRequest;
    .locals 3

    new-instance v0, Landroid/net/wifi/rtt/RangingRequest;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;Landroid/net/wifi/rtt/RangingRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/RangingRequest;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/rtt/RangingRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingRequest$1;->newArray(I)[Landroid/net/wifi/rtt/RangingRequest;

    move-result-object p1

    return-object p1
.end method
