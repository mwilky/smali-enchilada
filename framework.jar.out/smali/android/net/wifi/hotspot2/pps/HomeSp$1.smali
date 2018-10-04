.class Landroid/net/wifi/hotspot2/pps/HomeSp$1;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/HomeSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/HomeSp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 2

    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    return-object p1
.end method
