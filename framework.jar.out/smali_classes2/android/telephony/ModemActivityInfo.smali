.class public Landroid/telephony/ModemActivityInfo;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ModemActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_POWER_LEVELS:I = 0x5


# instance fields
.field private mEnergyUsed:I

.field private mIdleTimeMs:I

.field private mRxTimeMs:I

.field private mSleepTimeMs:I

.field private mTimestamp:J

.field private mTxTimeMs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ModemActivityInfo$1;

    invoke-direct {v0}, Landroid/telephony/ModemActivityInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII[III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    iput p3, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    iput p4, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    if-eqz p5, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    array-length v2, p5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput p6, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    iput p7, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return-void
.end method

.method private isEmpty()Z
    .locals 5

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyUsed()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return v0
.end method

.method public getIdleTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return v0
.end method

.method public getRxTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return v0
.end method

.method public getSleepTimeMillis()I
    .locals 1

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getTxTimeMillis()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    return-object v0
.end method

.method public isValid()Z
    .locals 5

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-gez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Landroid/telephony/ModemActivityInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v2
.end method

.method public setEnergyUsed(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    return-void
.end method

.method public setIdleTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    return-void
.end method

.method public setRxTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    return-void
.end method

.method public setSleepTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    return-void
.end method

.method public setTxTimeMillis([I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModemActivityInfo{ mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSleepTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIdleTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTxTimeMs[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEnergyUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/telephony/ModemActivityInfo;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mSleepTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mIdleTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ModemActivityInfo;->mTxTimeMs:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mRxTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ModemActivityInfo;->mEnergyUsed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
