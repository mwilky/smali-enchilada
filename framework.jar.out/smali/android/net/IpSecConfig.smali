.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field private mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

.field private mAuthentication:Landroid/net/IpSecAlgorithm;

.field private mDestinationAddress:Ljava/lang/String;

.field private mEncapRemotePort:I

.field private mEncapSocketResourceId:I

.field private mEncapType:I

.field private mEncryption:Landroid/net/IpSecAlgorithm;

.field private mMarkMask:I

.field private mMarkValue:I

.field private mMode:I

.field private mNattKeepaliveInterval:I

.field private mNetwork:Landroid/net/Network;

.field private mSourceAddress:Ljava/lang/String;

.field private mSpiResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public constructor <init>(Landroid/net/IpSecConfig;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMode:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    iget-object v0, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget v0, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget-object v0, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v0, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapType:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v0, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v0, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v0, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iput v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static equals(Landroid/net/IpSecConfig;Landroid/net/IpSecConfig;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v2, p0, Landroid/net/IpSecConfig;->mMode:I

    iget v3, p1, Landroid/net/IpSecConfig;->mMode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    if-ne v2, v3, :cond_3

    :cond_2
    iget v2, p0, Landroid/net/IpSecConfig;->mEncapType:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    iget v3, p1, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    iget v3, p1, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    iget v3, p1, Landroid/net/IpSecConfig;->mSpiResourceId:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    iget-object v3, p1, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-static {v2, v3}, Landroid/net/IpSecAlgorithm;->equals(Landroid/net/IpSecAlgorithm;Landroid/net/IpSecAlgorithm;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    iget v3, p1, Landroid/net/IpSecConfig;->mMarkValue:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    iget v3, p1, Landroid/net/IpSecConfig;->mMarkMask:I

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v0

    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    move v0, v1

    nop

    :cond_5
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getAuthentication()Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEncapRemotePort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return v0
.end method

.method public getEncapSocketResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return v0
.end method

.method public getEncapType()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return v0
.end method

.method public getEncryption()Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getMarkMask()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return v0
.end method

.method public getMarkValue()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    return v0
.end method

.method public getNattKeepaliveInterval()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public getSourceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSpiResourceId()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return v0
.end method

.method public setAuthenticatedEncryption(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setAuthentication(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setDestinationAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    return-void
.end method

.method public setEncapRemotePort(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    return-void
.end method

.method public setEncapSocketResourceId(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    return-void
.end method

.method public setEncapType(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    return-void
.end method

.method public setEncryption(Landroid/net/IpSecAlgorithm;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    return-void
.end method

.method public setMarkMask(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    return-void
.end method

.method public setMarkValue(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mMode:I

    return-void
.end method

.method public setNattKeepaliveInterval(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setSourceAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    return-void
.end method

.method public setSpiResourceId(I)V
    .locals 0

    iput p1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "TUNNEL"

    goto :goto_0

    :cond_0
    const-string v1, "TRANSPORT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDestinationAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapSocketResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncapRemotePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNattKeepaliveInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mSpiResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthenticatedEncryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMarkMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mSpiResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->mAuthenticatedEncryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapSocketResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mEncapRemotePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mNattKeepaliveInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->mMarkMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
