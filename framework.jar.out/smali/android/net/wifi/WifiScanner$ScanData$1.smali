.class Landroid/net/wifi/WifiScanner$ScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-array v10, v9, [Landroid/net/wifi/ScanResult;

    nop

    :goto_1
    move v0, v1

    if-ge v0, v9, :cond_1

    sget-object v1, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    aput-object v1, v10, v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v11, Landroid/net/wifi/WifiScanner$ScanData;

    move-object v0, v11

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIZ[Landroid/net/wifi/ScanResult;)V

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p1

    return-object p1
.end method
