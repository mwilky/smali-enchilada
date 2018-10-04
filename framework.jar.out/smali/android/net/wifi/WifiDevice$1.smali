.class Landroid/net/wifi/WifiDevice$1;
.super Ljava/lang/Object;
.source "WifiDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiDevice;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiDevice;
    .locals 3

    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0}, Landroid/net/wifi/WifiDevice;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiDevice;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiDevice$1;->newArray(I)[Landroid/net/wifi/WifiDevice;

    move-result-object p1

    return-object p1
.end method
