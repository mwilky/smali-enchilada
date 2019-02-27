.class public final Landroid/hardware/location/NanoAppMessage;
.super Ljava/lang/Object;
.source "NanoAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private mIsBroadcasted:Z

.field private mMessageBody:[B

.field private mMessageType:I

.field private mNanoAppId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoAppMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JI[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    iput-object p4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    iput-boolean p5, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    iget-object v1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppMessage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;
    .locals 7

    new-instance v6, Landroid/hardware/location/NanoAppMessage;

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZ)V

    return-object v6
.end method

.method public static createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;
    .locals 7

    new-instance v6, Landroid/hardware/location/NanoAppMessage;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZ)V

    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessageBody()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    return v0
.end method

.method public getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    return-wide v0
.end method

.method public isBroadcastMessage()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoAppMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-eqz v2, :cond_0

    const-string v2, "broadcast"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "unicast"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", nanoapp = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-le v0, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
