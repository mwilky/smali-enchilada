.class public Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;,
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8

.field public static final GPS_SIGNAL_QUALITY_GOOD:I = 0x1

.field public static final GPS_SIGNAL_QUALITY_POOR:I = 0x0

.field public static final NUM_GPS_SIGNAL_QUALITY_LEVELS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private logStartInElapsedRealTime:Ljava/lang/String;

.field private mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

.field private positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private reset()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    return-void
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    :cond_0
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    :cond_1
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    :cond_2
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    :cond_3
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->powerMetrics:Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-static {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    return-object v1
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS_KPI_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "  KPI logging start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  KPI logging end time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Number of location reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "  Percentage location failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "  Number of TTFF reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "  TTFF mean (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  TTFF standard deviation (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "  Number of position accuracy reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "  Position accuracy mean (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Position accuracy standard deviation (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "  Number of CN0 reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "  Top 4 Avg CN0 mean (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "GNSS_KPI_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "Power Metrics"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Time on battery (min): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dB-Hz (min): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Amount of time (while on battery) Top 4 Avg CN0 <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dB-Hz (min): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v3, "  Energy consumed while on battery (mAh): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public logCn0([FI)V
    .locals 6

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    array-length v0, p1

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, p2, -0x4

    aget v1, v0, v1

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    const-wide/16 v1, 0x0

    add-int/lit8 v3, p2, -0x4

    :goto_0
    if-ge v3, p2, :cond_2

    aget v4, v0, v3

    float-to-double v4, v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->mGnssPowerMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->reportSignalQuality([FI)V

    :cond_5
    return-void
.end method

.method public logMissedReports(II)V
    .locals 5

    nop

    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int v0, p2, v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    div-int/lit16 v1, p1, 0x3e8

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    return-void
.end method
