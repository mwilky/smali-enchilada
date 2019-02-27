.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final ADR_ALL:S = 0x7s

.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final HAS_USED_IN_FIX:I = 0x20000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final STATE_ALL:S = 0x1fs

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic access$1002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$102(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p1
.end method

.method static synthetic access$1102(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/location/GpsMeasurement;F)F
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p1
.end method

.method static synthetic access$1702(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic access$1802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic access$2002(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide p1
.end method

.method static synthetic access$2102(Landroid/location/GpsMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p1
.end method

.method static synthetic access$2202(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p1
.end method

.method static synthetic access$2302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide p1
.end method

.method static synthetic access$2402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide p1
.end method

.method static synthetic access$2502(Landroid/location/GpsMeasurement;B)B
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p1
.end method

.method static synthetic access$2602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic access$2702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide p1
.end method

.method static synthetic access$2802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$2902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide p1
.end method

.method static synthetic access$3002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return p1
.end method

.method static synthetic access$3102(Landroid/location/GpsMeasurement;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsMeasurement;S)S
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const-string v1, "Valid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "Reset|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const-string v1, "CycleSlip|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 v1, v1, -0x8

    if-lez v1, :cond_4

    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLossOfLockString()Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "CycleSlip"

    return-object v0

    :pswitch_1
    const-string v0, "Ok"

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

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NotUsed"

    return-object v0

    :pswitch_1
    const-string v0, "Detected"

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

.method private getStateString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const-string v1, "CodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const-string v1, "SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const-string v1, "TowDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const-string v1, "MsecAmbiguous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v1, v1, -0x20

    if-lez v1, :cond_6

    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    const/16 v1, -0x80

    invoke-virtual {p0, v1}, Landroid/location/GpsMeasurement;->setPrn(B)V

    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setState(S)V

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetFlag(I)V
    .locals 2

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public getBitNumber()I
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return v0
.end method

.method public getCarrierCycles()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .locals 1

    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0InDbHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public getElevationInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public getLossOfLock()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return v0
.end method

.method public getMultipathIndicator()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return v0
.end method

.method public getPrn()B
    .locals 1

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return v0
.end method

.method public getPseudorangeInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    return v0
.end method

.method public getTimeFromLastBitInMs()S
    .locals 1

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return v0
.end method

.method public getTimeOffsetInNs()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBitNumber()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyInHz()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseInChips()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftInHz()Z
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationInDeg()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeInMeters()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeFromLastBitInMs()Z
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isPseudorangeRateCorrected()Z
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsedInFix()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method public resetAzimuthInDeg()V
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public resetBitNumber()V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public resetCodePhaseInChips()V
    .locals 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .locals 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public resetDopplerShiftInHz()V
    .locals 2

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .locals 2

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public resetElevationInDeg()V
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public resetPseudorangeInMeters()V
    .locals 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .locals 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .locals 2

    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iget-boolean v0, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-void
.end method

.method public setAzimuthInDeg(D)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public setBitNumber(I)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public setCn0InDbHz(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-void
.end method

.method public setCodePhaseInChips(D)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public setElevationInDeg(D)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public setLossOfLock(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return-void
.end method

.method public setMultipathIndicator(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return-void
.end method

.method public setPrn(B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public setState(S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return-void
.end method

.method public setTimeFromLastBitInMs(S)V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-void
.end method

.method public setUsedInFix(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    const-string v0, "   %-29s = %s\n"

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GpsMeasurement:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   %-29s = %s\n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Prn"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "TimeOffsetInNs"

    aput-object v6, v5, v7

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "State"

    aput-object v6, v5, v7

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "ReceivedGpsTowInNs"

    aput-object v9, v6, v7

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "ReceivedGpsTowUncertaintyInNs"

    aput-object v9, v6, v4

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "Cn0InDbHz"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "PseudorangeRateInMetersPerSec"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "PseudorangeRateUncertaintyInMetersPerSec"

    aput-object v9, v6, v4

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "PseudorangeRateIsCorrected"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "AccumulatedDeltaRangeState"

    aput-object v9, v6, v7

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "AccumulatedDeltaRangeInMeters"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "AccumulatedDeltaRangeUncertaintyInMeters"

    aput-object v9, v6, v4

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "PseudorangeInMeters"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v11

    :goto_0
    aput-object v9, v6, v8

    const-string v9, "PseudorangeUncertaintyInMeters"

    aput-object v9, v6, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v11

    :goto_1
    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "CodePhaseInChips"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v11

    :goto_2
    aput-object v9, v6, v8

    const-string v9, "CodePhaseUncertaintyInChips"

    aput-object v9, v6, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_3

    :cond_3
    move-object v9, v11

    :goto_3
    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "CarrierFrequencyInHz"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v11

    :goto_4
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "CarrierCycles"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object v9, v11

    :goto_5
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "CarrierPhase"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object v9, v11

    :goto_6
    aput-object v9, v6, v8

    const-string v9, "CarrierPhaseUncertainty"

    aput-object v9, v6, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object v9, v11

    :goto_7
    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "LossOfLock"

    aput-object v9, v6, v7

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "BitNumber"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object v9, v11

    :goto_8
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "TimeFromLastBitInMs"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-short v9, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    goto :goto_9

    :cond_9
    move-object v9, v11

    :goto_9
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "DopplerShiftInHz"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_a

    :cond_a
    move-object v9, v11

    :goto_a
    aput-object v9, v6, v8

    const-string v9, "DopplerShiftUncertaintyInHz"

    aput-object v9, v6, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_b

    :cond_b
    move-object v9, v11

    :goto_b
    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "MultipathIndicator"

    aput-object v9, v6, v7

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "SnrInDb"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object v9, v11

    :goto_c
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "ElevationInDeg"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_d

    :cond_d
    move-object v9, v11

    :goto_d
    aput-object v9, v6, v8

    const-string v9, "ElevationUncertaintyInDeg"

    aput-object v9, v6, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_e

    :cond_e
    move-object v9, v11

    :goto_e
    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "AzimuthInDeg"

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-wide v12, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_f

    :cond_f
    move-object v6, v11

    :goto_f
    aput-object v6, v5, v8

    const-string v6, "AzimuthUncertaintyInDeg"

    aput-object v6, v5, v4

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    nop

    :cond_10
    aput-object v11, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "UsedInFix"

    aput-object v5, v4, v7

    iget-boolean v5, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
