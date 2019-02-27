.class Landroid/net/wifi/WifiSsid$1;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiSsid;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;
    .locals 5

    new-instance v0, Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiSsid;-><init>(Landroid/net/wifi/WifiSsid$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    iget-object v3, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiSsid;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->newArray(I)[Landroid/net/wifi/WifiSsid;

    move-result-object p1

    return-object p1
.end method
