.class public final Landroid/telephony/data/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActive:I

.field private final mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mCid:I

.field private final mDnses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mGateways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfname:Ljava/lang/String;

.field private final mMtu:I

.field private final mPcscfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatus:I

.field private final mSuggestedRetryTime:I

.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/DataCallResponse$1;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    iput p2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    iput p3, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    iput p4, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    if-nez p5, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    if-nez p6, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, p6

    :goto_1
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    if-nez p7, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    move-object v0, p7

    :goto_2
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    if-nez p8, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    move-object v0, p8

    :goto_3
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    if-nez p9, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    move-object v0, p9

    :goto_4
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    if-nez p10, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    :cond_5
    move-object v0, p10

    :goto_5
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    iput p11, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/data/DataCallResponse;

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataCallResponse;

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    iget v4, v2, Landroid/telephony/data/DataCallResponse;->mStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    iget v4, v2, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    iget v4, v2, Landroid/telephony/data/DataCallResponse;->mCid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    iget v4, v2, Landroid/telephony/data/DataCallResponse;->mActive:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    iget v4, v2, Landroid/telephony/data/DataCallResponse;->mMtu:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getActive()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    return v0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    return v0
.end method

.method public getDnses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    return-object v0
.end method

.method public getGateways()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    return-object v0
.end method

.method public getIfname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return v0
.end method

.method public getPcscfs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    return v0
.end method

.method public getSuggestedRetryTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DataCallResponse: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ifname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " dnses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " gateways="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " pcscf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mActive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mIfname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGateways:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
