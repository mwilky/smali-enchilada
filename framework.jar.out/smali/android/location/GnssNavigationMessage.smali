.class public final Landroid/location/GnssNavigationMessage;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback;,
        Landroid/location/GnssNavigationMessage$GnssNavigationMessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssNavigationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[B

.field public static final STATUS_PARITY_PASSED:I = 0x1

.field public static final STATUS_PARITY_REBUILT:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final TYPE_BDS_D1:I = 0x501

.field public static final TYPE_BDS_D2:I = 0x502

.field public static final TYPE_GAL_F:I = 0x602

.field public static final TYPE_GAL_I:I = 0x601

.field public static final TYPE_GLO_L1CA:I = 0x301

.field public static final TYPE_GPS_CNAV2:I = 0x104

.field public static final TYPE_GPS_L1CA:I = 0x101

.field public static final TYPE_GPS_L2CNAV:I = 0x102

.field public static final TYPE_GPS_L5CNAV:I = 0x103

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mData:[B

.field private mMessageId:I

.field private mStatus:I

.field private mSubmessageId:I

.field private mSvid:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    new-instance v0, Landroid/location/GnssNavigationMessage$1;

    invoke-direct {v0}, Landroid/location/GnssNavigationMessage$1;-><init>()V

    sput-object v0, Landroid/location/GnssNavigationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ParityRebuilt"

    return-object v0

    :pswitch_1
    const-string v0, "ParityPassed"

    return-object v0

    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    if-eqz v0, :cond_1

    const/16 v1, 0x301

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Galileo F"

    return-object v0

    :pswitch_1
    const-string v0, "Galileo I"

    return-object v0

    :pswitch_2
    const-string v0, "Beidou D2"

    return-object v0

    :pswitch_3
    const-string v0, "Beidou D1"

    return-object v0

    :pswitch_4
    const-string v0, "GPS CNAV2"

    return-object v0

    :pswitch_5
    const-string v0, "GPS L5-CNAV"

    return-object v0

    :pswitch_6
    const-string v0, "GPS L2-CNAV"

    return-object v0

    :pswitch_7
    const-string v0, "GPS L1 C/A"

    return-object v0

    :cond_0
    const-string v0, "Glonass L1 C/A"

    return-object v0

    :cond_1
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x501
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x601
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    sget-object v1, Landroid/location/GnssNavigationMessage;->EMPTY_ARRAY:[B

    iput-object v1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return v0
.end method

.method public getSubmessageId()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->initialize()V

    return-void
.end method

.method public set(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mType:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSvid:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    iget-object v0, p1, Landroid/location/GnssNavigationMessage;->mData:[B

    iput-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    iget v0, p1, Landroid/location/GnssNavigationMessage;->mStatus:I

    iput v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setData([B)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Data must be a non-null array"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageId(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    return-void
.end method

.method public setSubmessageId(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    return-void
.end method

.method public setSvid(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssNavigationMessage;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const-string v0, "   %-15s = %s\n"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GnssNavigationMessage:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "   %-15s = %s\n"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Type"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getTypeString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Svid"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Status"

    aput-object v5, v4, v6

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage;->getStatusString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "MessageId"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   %-15s = %s\n"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SubmessageId"

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   %-15s = %s\n"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Data"

    aput-object v4, v3, v6

    const-string/jumbo v4, "{"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        "

    iget-object v3, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v4, v3

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v5, v3, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mSubmessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/GnssNavigationMessage;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/location/GnssNavigationMessage;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
