.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Statistics"
.end annotation


# instance fields
.field private count:I

.field private sum:D

.field private sumSquare:D

.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V

    return-void
.end method


# virtual methods
.method public addItem(D)V
    .locals 4

    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    return v0
.end method

.method public getMean()D
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 6

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    mul-double/2addr v0, v0

    iget-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    iget v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    return-void
.end method
