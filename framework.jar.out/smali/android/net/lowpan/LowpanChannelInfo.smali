.class public Landroid/net/lowpan/LowpanChannelInfo;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_BANDWIDTH:F = 0.0f

.field public static final UNKNOWN_FREQUENCY:F = 0.0f

.field public static final UNKNOWN_POWER:I = 0x7fffffff


# instance fields
.field private mIndex:I

.field private mIsMaskedByRegulatoryDomain:Z

.field private mMaxTransmitPower:I

.field private mName:Ljava/lang/String;

.field private mSpectrumBandwidth:F

.field private mSpectrumCenterFrequency:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;FF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    iput-object p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iput p4, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanChannelInfo$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return p1
.end method

.method static synthetic access$402(Landroid/net/lowpan/LowpanChannelInfo;F)F
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return p1
.end method

.method static synthetic access$502(Landroid/net/lowpan/LowpanChannelInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return p1
.end method

.method static synthetic access$602(Landroid/net/lowpan/LowpanChannelInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return p1
.end method

.method public static getChannelInfoForIeee802154Page0(I)Landroid/net/lowpan/LowpanChannelInfo;
    .locals 5

    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const v1, 0x4e4f04d4    # 8.6830003E8f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    const v1, 0x49127c00    # 600000.0f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    const v2, 0x49f42400    # 2000000.0f

    if-ge p0, v1, :cond_2

    const v1, 0x4e5787c8    # 9.04E8f

    int-to-float v3, p0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a

    if-ge p0, v1, :cond_3

    const v1, 0x4f0c1227    # 2.34999987E9f

    const v3, 0x4a989680    # 5000000.0f

    int-to-float v4, p0

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iput v2, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/lowpan/LowpanChannelInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanChannelInfo;

    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    iget-boolean v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return v0
.end method

.method public getMaxTransmitPower()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpectrumBandwidth()F
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return v0
.end method

.method public getSpectrumCenterFrequency()F
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMaskedByRegulatoryDomain()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    const v4, 0x49742400    # 1000000.0f

    const v5, 0x4e6e6b28    # 1.0E9f

    if-lez v1, :cond_3

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    const-string v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    const-string v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, ", SpectrumCenterFrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "kHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    const-string v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_5

    const-string v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, "MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v1, ", SpectrumBandwidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "kHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_1
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_7

    const-string v1, ", MaxTransmitPower: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
