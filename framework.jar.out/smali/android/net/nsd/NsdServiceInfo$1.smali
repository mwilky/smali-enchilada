.class Landroid/net/nsd/NsdServiceInfo$1;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/nsd/NsdServiceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;
    .locals 7

    new-instance v0, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$002(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$102(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$202(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/nsd/NsdServiceInfo;->access$302(Landroid/net/nsd/NsdServiceInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v4, v5, [B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-static {v0}, Landroid/net/nsd/NsdServiceInfo;->access$400(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/nsd/NsdServiceInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/nsd/NsdServiceInfo$1;->newArray(I)[Landroid/net/nsd/NsdServiceInfo;

    move-result-object p1

    return-object p1
.end method
