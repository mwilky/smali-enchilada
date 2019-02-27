.class Landroid/net/wifi/hotspot2/pps/Credential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 3

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hotspot2/pps/Credential;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p1

    return-object p1
.end method
