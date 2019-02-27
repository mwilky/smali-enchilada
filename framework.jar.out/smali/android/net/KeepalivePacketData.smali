.class public Landroid/net/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/KeepalivePacketData$InvalidPacketException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/KeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "KeepalivePacketData"

.field private static final UDP_HEADER_LENGTH:I = 0x8


# instance fields
.field public final dstAddress:Ljava/net/InetAddress;

.field public final dstPort:I

.field private final mPacket:[B

.field public final srcAddress:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/KeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/KeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/KeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/KeepalivePacketData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    iput p2, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    iput p4, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    iput-object p5, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "KeepalivePacketData"

    const-string v1, "Invalid ports in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_1
    const-string v0, "KeepalivePacketData"

    const-string v1, "Invalid or mismatched InetAddresses in KeepalivePacketData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0
.end method

.method public static nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Landroid/net/KeepalivePacketData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    const/16 v0, 0x1194

    if-ne p3, v0, :cond_0

    const/16 v0, 0x1d

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v2, 0x4500

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-short v4, p1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v4, p3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, -0x14

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v5, 0x14

    invoke-static {v1, v2, v5}, Landroid/net/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    new-instance v2, Landroid/net/KeepalivePacketData;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_1
    new-instance v0, Landroid/net/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Landroid/net/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPacket()[B
    .locals 1

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/KeepalivePacketData;->srcPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/KeepalivePacketData;->dstPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/KeepalivePacketData;->mPacket:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
