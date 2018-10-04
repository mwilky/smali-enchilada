.class public Landroid/telephony/DataConnectionRealTimeInfo;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataConnectionRealTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DC_POWER_STATE_HIGH:I = 0x3

.field public static final DC_POWER_STATE_LOW:I = 0x1

.field public static final DC_POWER_STATE_MEDIUM:I = 0x2

.field public static final DC_POWER_STATE_UNKNOWN:I = 0x7fffffff


# instance fields
.field private mDcPowerState:I

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataConnectionRealTimeInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    iput p3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/telephony/DataConnectionRealTimeInfo;

    iget-wide v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    iget-wide v5, v2, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    iget v4, v2, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getDcPowerState()I
    .locals 1

    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x11

    mul-long v6, v4, v2

    iget-wide v8, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    add-long/2addr v6, v4

    long-to-int v2, v6

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " mDcPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
