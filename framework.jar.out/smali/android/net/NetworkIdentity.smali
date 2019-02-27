.class public Landroid/net/NetworkIdentity;
.super Ljava/lang/Object;
.source "NetworkIdentity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/net/NetworkIdentity;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMBINE_SUBTYPE_ENABLED:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUBTYPE_COMBINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NetworkIdentity"


# instance fields
.field final mDefaultNetwork:Z

.field final mMetered:Z

.field final mNetworkId:Ljava/lang/String;

.field final mRoaming:Z

.field final mSubType:I

.field final mSubscriberId:Ljava/lang/String;

.field final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/NetworkIdentity;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iput-object p3, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iput-boolean p6, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    iput-boolean p7, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    return-void
.end method

.method public static buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;
    .locals 13

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v6, v3, 0x1

    iget-object v3, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    const-string v3, "NetworkIdentity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Active mobile network without subscriber! ni = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_4

    iget-object v3, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p1, Landroid/net/NetworkState;->networkId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    move-object v2, v5

    :cond_4
    :goto_1
    move-object v10, v1

    move-object v11, v2

    new-instance v12, Landroid/net/NetworkIdentity;

    move-object v1, v12

    move v2, v0

    move v3, v9

    move-object v4, v10

    move-object v5, v11

    move v8, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v12
.end method

.method public static scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method public static scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/net/NetworkIdentity;)I
    .locals 3

    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v1, p1, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iget v2, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    iget-boolean v2, p1, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-static {v1, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    :cond_5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/net/NetworkIdentity;

    invoke-virtual {p0, p1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/net/NetworkIdentity;

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mType:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/net/NetworkIdentity;->mSubType:I

    iget v3, v0, Landroid/net/NetworkIdentity;->mSubType:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mMetered:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    iget-boolean v3, v0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getDefaultNetwork()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    return v0
.end method

.method public getMetered()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoaming()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    return v0
.end method

.method public getSubType()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkIdentity;->mSubType:I

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkIdentity;->mType:I

    invoke-static {v1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "COMBINED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", subscriberId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    if-eqz v1, :cond_2

    const-string v1, ", ROAMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", defaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Landroid/net/NetworkIdentity;->mType:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    const-wide v2, 0x10900000003L

    iget-object v4, p0, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mRoaming:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mMetered:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/net/NetworkIdentity;->mDefaultNetwork:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
