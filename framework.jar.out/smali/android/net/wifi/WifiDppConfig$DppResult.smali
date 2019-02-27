.class public Landroid/net/wifi/WifiDppConfig$DppResult;
.super Ljava/lang/Object;
.source "WifiDppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiDppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DppResult"
.end annotation


# static fields
.field public static final DPP_CONF_EVENT_TYPE_FAILED:I = 0x0

.field public static final DPP_CONF_EVENT_TYPE_RECEIVED:I = 0x2

.field public static final DPP_CONF_EVENT_TYPE_SENT:I = 0x1

.field public static final DPP_EVENT_AUTH_SUCCESS:I = 0x0

.field public static final DPP_EVENT_CONF:I = 0x4

.field public static final DPP_EVENT_MISSING_AUTH:I = 0x5

.field public static final DPP_EVENT_NETWORK_ID:I = 0x6

.field public static final DPP_EVENT_NOT_COMPATIBLE:I = 0x1

.field public static final DPP_EVENT_RESPONSE_PENDING:I = 0x2

.field public static final DPP_EVENT_SCAN_PEER_QRCODE:I = 0x3


# instance fields
.field public authMissingParam:B

.field public cSignKey:Ljava/lang/String;

.field public capab:B

.field public configEventType:B

.field public connector:Ljava/lang/String;

.field public iBootstrapData:Ljava/lang/String;

.field public initiator:Z

.field public netAccessKey:Ljava/lang/String;

.field public netAccessKeyExpiry:I

.field public netID:I

.field public passphrase:Ljava/lang/String;

.field public psk:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netID:I

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->capab:B

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->authMissingParam:B

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->configEventType:B

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->iBootstrapData:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->ssid:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->connector:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->cSignKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKey:Ljava/lang/String;

    iput v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKeyExpiry:I

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->passphrase:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->psk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->capab:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->authMissingParam:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->configEventType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->iBootstrapData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->ssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->connector:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->cSignKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKeyExpiry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->passphrase:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->psk:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->initiator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->capab:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->authMissingParam:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->configEventType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->iBootstrapData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->connector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->cSignKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->netAccessKeyExpiry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiDppConfig$DppResult;->psk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
