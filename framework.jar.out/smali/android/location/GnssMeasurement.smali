.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$AdrState;,
        Landroid/location/GnssMeasurement$State;,
        Landroid/location/GnssMeasurement$MultipathIndicator;
    }
.end annotation


# static fields
.field public static final ADR_STATE_ALL:I = 0x1f

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_HALF_CYCLE_REPORTED:I = 0x10

.field public static final ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_TOW_KNOWN:I = 0x4000

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mAutomaticGainControlLevelInDb:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic access$1002(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return p1
.end method

.method static synthetic access$102(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return p1
.end method

.method static synthetic access$1102(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/GnssMeasurement;F)F
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return p1
.end method

.method static synthetic access$1402(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic access$1702(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return p1
.end method

.method static synthetic access$1802(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide p1
.end method

.method static synthetic access$202(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return p1
.end method

.method static synthetic access$302(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GnssMeasurement;I)I
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return p1
.end method

.method static synthetic access$502(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GnssMeasurement;J)J
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GnssMeasurement;D)D
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const-string v1, "Valid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "Reset|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const-string v1, "CycleSlip|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const-string v1, "HalfCycleResolved|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const-string v1, "HalfCycleReported|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

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

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NotDetected"

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
    .locals 3

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v0, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "CodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string v1, "BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const-string v1, "SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const-string v1, "TowDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    const-string v1, "TowKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const-string v1, "MsecAmbiguous|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    const-string v1, "SymbolSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const-string v1, "GloStringSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    const-string v1, "GloTodDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    const-string v1, "GloTodKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    const-string v1, "BdsD2BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    const-string v1, "BdsD2SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_d

    const-string v1, "GalE1bcCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_e

    const-string v1, "E1c2ndCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_f

    const-string v1, "GalE1bPageSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_10

    const-string v1, "SbasSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, -0x4000

    if-lez v1, :cond_11

    const-string v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setSvid(I)V

    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setState(I)V

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

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

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public getAutomaticGainControlLevelDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public getCarrierCycles()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0DbHz()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public getConstellationType()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public getMultipathIndicator()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public getSvid()I
    .locals 1

    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public getTimeOffsetNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public hasAutomaticGainControlLevelDb()Z
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    return-void
.end method

.method public resetAutomaticGainControlLevel()V
    .locals 2

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .locals 2

    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-void
.end method

.method public setAutomaticGainControlLevelInDb(D)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public setCn0DbHz(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-void
.end method

.method public setConstellationType(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return-void
.end method

.method public setMultipathIndicator(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return-void
.end method

.method public setSvid(I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    const-string v0, "   %-29s = %s\n"

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssMeasurement:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "   %-29s = %s\n"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Svid"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ConstellationType"

    aput-object v6, v5, v7

    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "TimeOffsetNanos"

    aput-object v6, v5, v7

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

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

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "ReceivedSvTimeNanos"

    aput-object v9, v6, v7

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "ReceivedSvTimeUncertaintyNanos"

    aput-object v9, v6, v4

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "Cn0DbHz"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "PseudorangeRateMetersPerSecond"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "PseudorangeRateUncertaintyMetersPerSecond"

    aput-object v9, v6, v4

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "AccumulatedDeltaRangeState"

    aput-object v9, v6, v7

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v6, v5, [Ljava/lang/Object;

    const-string v9, "AccumulatedDeltaRangeMeters"

    aput-object v9, v6, v7

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v9, "AccumulatedDeltaRangeUncertaintyMeters"

    aput-object v9, v6, v4

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "CarrierFrequencyHz"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    iget v9, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v11

    :goto_0
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "CarrierCycles"

    aput-object v9, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v11

    :goto_1
    aput-object v9, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %-25s   %-40s = %s\n"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "CarrierPhase"

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v11

    :goto_2
    aput-object v6, v5, v8

    const-string v6, "CarrierPhaseUncertainty"

    aput-object v6, v5, v4

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v11

    :goto_3
    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "MultipathIndicator"

    aput-object v6, v5, v7

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "SnrInDb"

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v11

    :goto_4
    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   %-29s = %s\n"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "AgcLevelDb"

    aput-object v5, v4, v7

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    nop

    :cond_5
    aput-object v11, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
