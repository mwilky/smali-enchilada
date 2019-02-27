.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x5

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    iput-object p1, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "\u0000"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    array-length v2, v1

    const/16 v4, 0xf

    if-le v2, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v2, p0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v5, v1, v4

    iput-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/android/internal/net/VpnProfile;->type:I

    iget v6, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-ltz v6, :cond_6

    iget v6, v2, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x2

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aget-object v6, v1, v7

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    const/16 v6, 0x9

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    array-length v6, v1

    if-le v6, v3, :cond_3

    aget-object v3, v1, v3

    goto :goto_0

    :cond_3
    const-string v3, ""

    :goto_0
    iput-object v3, v2, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    move v4, v5

    :goto_2
    iput-boolean v4, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_6
    :goto_3
    return-object v0

    :cond_7
    :goto_4
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public areDnsAddressesNumeric()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public hasDns()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isServerAddressNumeric()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isTypeValidForLockdown()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidLockdownProfile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
