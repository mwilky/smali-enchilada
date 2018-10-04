.class public Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiAwareAgentNs"

.field private static final VDBG:Z = false


# instance fields
.field private mDigester:Ljava/security/MessageDigest;

.field private mNetworkSpecifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)V
    .locals 5

    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->initialize()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-direct {p0, v2}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    return-object v0
.end method

.method private convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;-><init>([B)V

    return-object v2
.end method

.method private initialize()V
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mDigester:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "WifiAwareAgentNs"

    const-string v2, "Can not instantiate a SHA-256 digester!? Will match nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public assertValidFromUid(I)V
    .locals 2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "WifiAwareAgentNetworkSpecifier should not be used in network requests"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    iget-object v1, v1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public satisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 5

    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    iget-object v4, v0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->convert(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    invoke-virtual {v2}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->mNetworkSpecifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
