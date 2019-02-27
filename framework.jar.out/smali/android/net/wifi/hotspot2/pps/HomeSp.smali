.class public final Landroid/net/wifi/hotspot2/pps/HomeSp;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/HomeSp;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SSID_BYTES:I = 0x20

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HomeSp"


# instance fields
.field private mFqdn:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mHomeNetworkIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUrl:Ljava/lang/String;

.field private mMatchAllOis:[J

.field private mMatchAnyOis:[J

.field private mOtherHomePartners:[Ljava/lang/String;

.field private mRoamingConsortiumOis:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    :cond_5
    return-void
.end method

.method private static writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    iget-object v4, v1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeNetworkIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchAllOis()[J
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    return-object v0
.end method

.method public getMatchAnyOis()[J
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    return-object v0
.end method

.method public getOtherHomePartners()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingConsortiumOis()[J
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFqdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    return-void
.end method

.method public setHomeNetworkIds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setMatchAllOis([J)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    return-void
.end method

.method public setMatchAnyOis([J)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    return-void
.end method

.method public setOtherHomePartners([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    return-void
.end method

.method public setRoamingConsortiumOis([J)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FriendlyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IconURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HomeNetworkIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MatchAllOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MatchAnyOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OtherHomePartners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RoamingConsortiumOIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()Z
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HomeSp"

    const-string v2, "Missing FQDN"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HomeSp"

    const-string v2, "Missing friendly name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "HomeSp"

    const-string v3, "Invalid SSID in HomeNetworkIDs"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
