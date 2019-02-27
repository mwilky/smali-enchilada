.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyConsumedMaMs:J

.field private mIdleTimeMs:J

.field private mKernelActiveTimeMs:J

.field private mLoggingDurationMs:J

.field private mNumBytesRx:J

.field private mNumBytesTx:J

.field private mNumPacketsRx:J

.field private mNumPacketsTx:J

.field private mRxTimeMs:J

.field private mSleepTimeMs:J

.field private mTimeInRatMs:[J

.field private mTimeInRxSignalStrengthLevelMs:[J

.field private mTxTimeMs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/connectivity/CellularBatteryStats;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/os/connectivity/CellularBatteryStats;->initialize()V

    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/connectivity/CellularBatteryStats$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/connectivity/CellularBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    const/16 v2, 0x15

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    sget v2, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnergyConsumedMaMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public getIdleTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public getKernelActiveTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public getLoggingDurationMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public getNumBytesRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public getNumBytesTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public getNumPacketsRx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public getNumPacketsTx()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public getRxTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public getSleepTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public getTimeInRatMs()[J
    .locals 1

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    return-object v0
.end method

.method public getTimeInRxSignalStrengthLevelMs()[J
    .locals 1

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-object v0
.end method

.method public getTxTimeMs()[J
    .locals 1

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method public setEnergyConsumedMaMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-void
.end method

.method public setIdleTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-void
.end method

.method public setKernelActiveTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-void
.end method

.method public setLoggingDurationMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-void
.end method

.method public setNumBytesRx(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-void
.end method

.method public setNumBytesTx(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-void
.end method

.method public setNumPacketsRx(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-void
.end method

.method public setNumPacketsTx(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-void
.end method

.method public setRxTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-void
.end method

.method public setSleepTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-void
.end method

.method public setTimeInRatMs([J)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    return-void
.end method

.method public setTimeInRxSignalStrengthLevelMs([J)V
    .locals 2

    array-length v0, p1

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-void
.end method

.method public setTxTimeMs([J)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    iput-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
