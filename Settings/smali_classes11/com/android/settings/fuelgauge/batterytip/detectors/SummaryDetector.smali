.class public Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;
.super Ljava/lang/Object;
.source "SummaryDetector.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryTipDetector;


# instance fields
.field private mAverageTimeMs:J

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;J)V
    .locals 0
    .param p1, "policy"    # Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
    .param p2, "averageTimeMs"    # J

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 33
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->mAverageTimeMs:J

    .line 34
    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->summaryEnabled:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x2

    .line 42
    .local v0, "state":I
    :goto_0
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SummaryDetector;->mAverageTimeMs:J

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;-><init>(IJ)V

    return-object v1
.end method
