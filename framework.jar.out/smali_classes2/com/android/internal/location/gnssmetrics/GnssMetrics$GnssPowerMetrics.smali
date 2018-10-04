.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssPowerMetrics"
.end annotation


# static fields
.field public static final POOR_TOP_FOUR_AVG_CN0_THRESHOLD_DB_HZ:D = 20.0

.field private static final REPORTING_THRESHOLD_DB_HZ:D = 1.0


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mLastAverageCn0:D

.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/app/IBatteryStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    return-void
.end method

.method private getSignalLevel(D)I
    .locals 2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public buildProto()Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;
    .locals 7

    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-static {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$100(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getLoggingDurationMs()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->loggingDurationMs:J

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getEnergyConsumedMaMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->energyConsumedMah:D

    invoke-virtual {v1}, Landroid/os/connectivity/GpsBatteryStats;->getTimeInGpsSignalQualityLevel()[J

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/location/nano/GnssLogsProto$PowerMetrics;->timeInSignalQualityLevelMs:[J

    aget-wide v5, v2, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public reportSignalQuality([FI)V
    .locals 6

    const-wide/16 v0, 0x0

    if-lez p2, :cond_1

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    if-ge v2, p2, :cond_0

    aget v3, p1, v2

    float-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->getSignalLevel(D)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteGpsSignalQuality(I)V

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$GnssPowerMetrics;->mLastAverageCn0:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
