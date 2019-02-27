.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfo$CellConnectionStatus;
    }
.end annotation


# static fields
.field public static final CONNECTION_NONE:I = 0x0

.field public static final CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final CONNECTION_UNKNOWN:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field protected static final TYPE_CDMA:I = 0x2

.field protected static final TYPE_GSM:I = 0x1

.field protected static final TYPE_LTE:I = 0x3

.field protected static final TYPE_WCDMA:I = 0x4


# instance fields
.field private mCellConnectionStatus:I

.field private mRegistered:Z

.field private mTimeStamp:J

.field private mTimeStampType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget v0, p1, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method private static timeStampTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "java_ril"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "oem_ril"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "modem"

    return-object v0

    :pswitch_3
    const-string v0, "antenna"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    :try_start_0
    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfo;

    iget-boolean v3, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v4, v2, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v5, v2, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget v4, v2, Landroid/telephony/CellInfo;->mTimeStampType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iget v4, v2, Landroid/telephony/CellInfo;->mCellConnectionStatus:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public getCellConnectionStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimeStampType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x1f

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v0

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public setCellConnectionStatus(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public setTimeStampType(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_0

    const-string v1, "YES"

    goto :goto_0

    :cond_0
    const-string v1, "NO"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-static {v1}, Landroid/telephony/CellInfo;->timeStampTypeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " mTimeStampType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " mTimeStamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "ns"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " mCellConnectionStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected writeToParcel(Landroid/os/Parcel;II)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
