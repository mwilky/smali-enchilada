.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# static fields
.field static final CHART_DATA_BIN_MASK:I = -0x10000

.field static final CHART_DATA_BIN_SHIFT:I = 0x10

.field static final CHART_DATA_X_MASK:I = 0xffff

.field static final DEBUG:Z = false

.field static final MONOSPACE:I = 0x3

.field static final NUM_PHONE_SIGNALS:I = 0x7

.field static final SANS:I = 0x1

.field static final SERIF:I = 0x2

.field static final TAG:Ljava/lang/String; = "BatteryHistoryChart"


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryBroadcast:Landroid/content/Intent;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistDataEnd:J

.field mHistEnd:J

.field mHistStart:J

.field mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0056

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0026

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v7, 0xc0

    invoke-virtual {v4, v7, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v5, -0x312845

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v5, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    move-object/from16 v5, p2

    invoke-virtual {v1, v5, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    new-instance v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    new-instance v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    invoke-virtual {v7, v1, v4, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    const/16 v9, 0xc

    invoke-virtual {v8, v1, v4, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    :goto_0
    const/4 v15, 0x0

    if-ge v9, v13, :cond_0

    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move/from16 v16, v2

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iput v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    move/from16 v16, v2

    goto/16 :goto_1

    :pswitch_1
    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_2
    move/from16 v16, v2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :pswitch_3
    move/from16 v16, v2

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    move v14, v2

    goto :goto_1

    :pswitch_4
    move/from16 v16, v2

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    move v12, v2

    goto :goto_1

    :pswitch_5
    move/from16 v16, v2

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    move v11, v2

    goto :goto_1

    :pswitch_6
    move/from16 v16, v2

    invoke-virtual {v4, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    move v10, v2

    goto :goto_1

    :pswitch_7
    move/from16 v16, v2

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_8
    move/from16 v16, v2

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    goto :goto_1

    :pswitch_9
    move/from16 v16, v2

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    goto :goto_1

    :pswitch_a
    move/from16 v16, v2

    iget v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v7, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    nop

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_0
    move/from16 v16, v2

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v15, v2

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/DashPathEffect;

    new-array v6, v3, [F

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/16 v17, 0x0

    aput v1, v6, v17

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v6, v3

    const/4 v1, 0x0

    invoke-direct {v15, v6, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v15}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    if-eqz v10, :cond_2

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v11, v12, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14, v11, v12, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static synthetic lambda$setStats$0(Lcom/android/settings/fuelgauge/BatteryHistoryChart;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    const/16 v6, 0x64

    iput v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v15

    if-eqz v15, :cond_a

    new-instance v15, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v15}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    :goto_0
    move-object/from16 v5, p1

    invoke-virtual {v5, v15}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v16

    if-eqz v16, :cond_9

    add-int/lit8 v2, v2, 0x1

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    iget-wide v6, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    :cond_0
    iget-byte v6, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget-byte v6, v15, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v22, v13

    move/from16 v23, v14

    const-wide/16 v6, 0x0

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v6, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v18, 0x39ef8b000L

    add-long v18, v8, v18

    cmp-long v6, v6, v18

    if-gtz v6, :cond_4

    iget-wide v6, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v8

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/32 v18, 0x493e0

    add-long v8, v8, v18

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_4
    move-wide/from16 v20, v8

    :goto_2
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    :goto_3
    iget-wide v8, v15, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v10, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v22, v13

    move/from16 v23, v14

    iget-wide v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v13, v13, v6

    if-nez v13, :cond_5

    iget-wide v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long v13, v10, v13

    sub-long v13, v8, v13

    iput-wide v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    :cond_5
    :goto_4
    invoke-virtual {v15}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v13

    if-eqz v13, :cond_8

    iget-byte v13, v15, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v13, v4, :cond_6

    const/4 v13, 0x1

    if-ne v2, v13, :cond_7

    :cond_6
    iget-byte v4, v15, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    :cond_7
    move v3, v2

    iget-wide v13, v15, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    iget v13, v15, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v12, v13

    iget v13, v15, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int v13, v22, v13

    goto :goto_5

    :cond_8
    move/from16 v13, v22

    :goto_5
    move/from16 v14, v23

    goto :goto_0

    :cond_9
    move-wide/from16 v20, v8

    move/from16 v22, v13

    goto :goto_6

    :cond_a
    move-object/from16 v5, p1

    move-wide/from16 v20, v8

    :goto_6
    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v8, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistDataEnd:J

    add-long v6, v20, v6

    sub-long/2addr v6, v10

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v8, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    div-long v8, v8, v16

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iput v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    const/high16 v6, 0x20000000

    and-int v7, v12, v6

    if-eqz v7, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    iput-boolean v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    const/high16 v7, 0x8000000

    and-int/2addr v7, v13

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    :goto_8
    iput-boolean v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    const/high16 v7, 0x200000

    and-int/2addr v7, v13

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    :goto_9
    iput-boolean v7, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    and-int/2addr v6, v13

    if-nez v6, :cond_f

    const/high16 v6, 0x18010000

    and-int/2addr v6, v12

    if-eqz v6, :cond_e

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v6, 0x1

    :goto_b
    iput-boolean v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    :cond_10
    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_11

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    :cond_11
    return-void
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 11

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int v9, p3, p2

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long/2addr v7, v2

    long-to-int v7, v7

    add-int/2addr v7, p2

    invoke-direct {v5, v6, v7, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 11

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int v9, p3, p2

    int-to-long v9, v9

    mul-long/2addr v7, v9

    div-long/2addr v7, v2

    long-to-int v7, v7

    add-int/2addr v7, p2

    invoke-direct {v5, v6, v7, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method buildBitmap(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    if-eqz v10, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_1
    move v13, v1

    if-eqz v10, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_2

    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_2
    move-object v14, v1

    if-eqz v10, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_3

    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_3
    move-object v15, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_c

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int v5, v1, v2

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x0

    move/from16 v16, v1

    const/4 v1, 0x0

    :goto_4
    move v3, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    if-nez v3, :cond_6

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    move v6, v1

    iget-object v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v11, v6

    move/from16 v19, v3

    int-to-float v3, v5

    move/from16 v20, v5

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v11, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v1

    int-to-float v5, v4

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v11, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    move/from16 v21, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v22, v1

    move-object v1, v7

    move-object v9, v2

    move v2, v3

    move/from16 v23, v13

    move/from16 v13, v19

    move v3, v5

    move v5, v4

    move v4, v11

    move-object/from16 v24, v15

    move/from16 v11, v20

    move v15, v5

    move/from16 v5, v22

    move/from16 v17, v21

    const/16 v19, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v17, v1

    nop

    :goto_5
    move/from16 v16, v6

    goto/16 :goto_6

    :cond_6
    move-object v9, v2

    move v11, v5

    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    move v13, v3

    move v15, v4

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_9

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v1, v16, v1

    if-ge v6, v1, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget v1, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    if-le v6, v1, :cond_8

    goto :goto_6

    :cond_8
    iget-object v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    move/from16 v25, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v17, v1

    move-object v1, v7

    move-object/from16 v20, v5

    move/from16 v5, v17

    move/from16 v17, v25

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v17, v1

    goto :goto_5

    :cond_9
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v2, v1

    if-lt v2, v8, :cond_a

    add-int/lit8 v2, v8, -0x1

    iget v3, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, v2, v3

    :cond_a
    move v6, v1

    iget-object v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v1

    move-object v1, v7

    move/from16 v20, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v1, v13, 0x1

    move v5, v11

    move v4, v15

    move/from16 v6, v19

    move/from16 v13, v23

    move-object/from16 v15, v24

    goto/16 :goto_4

    :cond_b
    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    goto :goto_7

    :cond_c
    move/from16 v19, v6

    move/from16 v23, v13

    move-object/from16 v24, v15

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_d
    :goto_7
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v1, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v9, v1, v2

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v12

    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v1, v1, 0x2

    if-eqz v10, :cond_e

    neg-int v1, v1

    :cond_e
    move v11, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-eqz v10, :cond_f

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    goto :goto_8

    :cond_f
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    :goto_8
    add-int v13, v1, v2

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int v2, v13, v11

    int-to-float v2, v2

    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v15, v24

    invoke-virtual {v1, v15}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v6, v23

    int-to-float v2, v6

    int-to-float v3, v9

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_10
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_11
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_12
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_13

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v1, p3, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v2, v7, v1, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    :cond_13
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_14
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_16
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_17
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_18
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_19
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1a
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1b
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1c
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1d
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_1e

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1e
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1f
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    int-to-float v3, v12

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_20
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v1

    move-object v1, v7

    move/from16 v20, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_21

    const/16 v18, 0x0

    :goto_9
    move/from16 v6, v18

    const/16 v1, 0xa

    if-ge v6, v1, :cond_21

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v6

    div-int/2addr v3, v1

    add-int v5, v2, v3

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    int-to-float v3, v5

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    int-to-float v4, v1

    int-to-float v1, v5

    move/from16 v26, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v17, v1

    move-object v1, v7

    move/from16 v18, v5

    move/from16 v5, v17

    move/from16 v17, v26

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v18, v17, 0x1

    goto :goto_9

    :cond_21
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v8

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_a
    if-ltz v4, :cond_25

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v6, v8

    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move/from16 v27, v6

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v8, v6

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int/2addr v6, v8

    if-lt v6, v3, :cond_22

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move/from16 v28, v8

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v8, v6, v8

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v6, v8, v6

    if-lt v6, v3, :cond_23

    nop

    move/from16 v32, v1

    move/from16 v29, v3

    :goto_b
    move/from16 v31, v9

    goto :goto_c

    :cond_22
    move/from16 v28, v8

    move/from16 v6, v27

    :cond_23
    move/from16 v29, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    if-ge v6, v3, :cond_24

    nop

    move/from16 v32, v1

    goto :goto_b

    :cond_24
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    move/from16 v30, v6

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v6, v6

    move/from16 v31, v9

    int-to-float v9, v1

    invoke-virtual {v3, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v6, v6

    int-to-float v9, v2

    invoke-virtual {v3, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    int-to-float v6, v8

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v9, v1, v9

    int-to-float v9, v9

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v3, v6, v9, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_c
    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v29

    move/from16 v9, v31

    move/from16 v1, v32

    move/from16 v8, p2

    goto/16 :goto_a

    :cond_25
    move/from16 v31, v9

    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p15

    if-eqz v4, :cond_2

    if-ltz v5, :cond_1

    if-ge v5, v1, :cond_1

    if-eqz v6, :cond_0

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    int-to-float v7, v1

    int-to-float v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    int-to-float v7, v1

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v8, v8, p3

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v7, p4

    int-to-float v8, v7

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v9, v9, p3

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->close()V

    goto :goto_0

    :cond_2
    move/from16 v7, p4

    :goto_0
    if-eqz p8, :cond_3

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v10, v1

    iget v11, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v11, p2, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    if-eqz p9, :cond_4

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v11, v1

    iget v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v12, p2, v12

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    if-eqz p10, :cond_5

    iget-object v11, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v12, v1

    iget v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v13, p2, v13

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    if-eqz p11, :cond_6

    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v13, v1

    iget v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v14, p2, v14

    int-to-float v14, v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    if-eqz p12, :cond_7

    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    if-eqz p13, :cond_8

    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    if-eqz p14, :cond_9

    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v14, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v13, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v2, v3

    invoke-static {v2, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 85

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-ne v0, v14, :cond_0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-ne v0, v13, :cond_0

    return-void

    :cond_0
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v0, :cond_4b

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-nez v0, :cond_1

    goto/16 :goto_3a

    :cond_1
    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    iput v13, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v16, v0, v1

    mul-int/lit8 v0, v16, 0xa

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v0, v1

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-le v13, v0, :cond_3

    iput-boolean v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    mul-int/lit8 v0, v16, 0xf

    if-le v13, v0, :cond_2

    div-int/lit8 v0, v16, 0x2

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v16, 0x3

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    :cond_3
    iput-boolean v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    :goto_0
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v0, :cond_4

    iput v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    :cond_4
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v9, 0x3

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v8, v0, v1

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v16, v0

    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    const/4 v7, 0x2

    if-eqz v0, :cond_a

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int v0, v0, v17

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_5

    move/from16 v1, v17

    goto :goto_1

    :cond_5
    move v1, v10

    :goto_1
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_6

    move/from16 v1, v17

    goto :goto_2

    :cond_6
    move v1, v10

    :goto_2
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v1, :cond_7

    move/from16 v1, v17

    goto :goto_3

    :cond_7
    move v1, v10

    :goto_3
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v1, :cond_8

    move/from16 v1, v17

    goto :goto_4

    :cond_8
    move v1, v10

    :goto_4
    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_9

    move/from16 v1, v17

    goto :goto_5

    :cond_9
    move v1, v10

    :goto_5
    add-int/2addr v0, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/2addr v1, v7

    add-int/2addr v0, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/2addr v1, v7

    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v14}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto :goto_6

    :cond_a
    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x4

    add-int v0, v17, v0

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    :cond_b
    :goto_6
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-wide v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_c

    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v0, v5

    goto :goto_7

    :cond_c
    const-wide/16 v0, 0x1

    :goto_7
    move-wide/from16 v18, v0

    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    const-wide/16 v2, 0x0

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v22, v12, v7

    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v7, v13, v7

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v23, v7, v12

    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v7, v7, v23

    iput v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    const/4 v12, 0x0

    iget v9, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    iget v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v41, v11

    iget-wide v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    move-wide/from16 v42, v0

    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v0, v10, v0

    if-lez v0, :cond_39

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v10, v25

    move/from16 v1, v31

    move/from16 v11, v32

    move/from16 v14, v33

    move/from16 v45, v34

    move/from16 v46, v35

    move/from16 v47, v37

    move/from16 v48, v38

    move/from16 v25, v7

    move-object/from16 v7, v29

    move/from16 v82, v27

    move/from16 v27, v9

    move/from16 v9, v26

    move/from16 v26, v12

    move/from16 v12, v82

    move-wide/from16 v83, v2

    move-object/from16 v3, v28

    move-wide/from16 v28, v83

    move/from16 v2, v30

    :goto_8
    move/from16 v49, v14

    iget-object v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v14

    if-eqz v14, :cond_38

    move/from16 v14, v41

    if-ge v12, v14, :cond_37

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v30

    if-eqz v30, :cond_30

    move/from16 v51, v11

    move/from16 v50, v12

    iget-wide v11, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v11, v11, v28

    add-long v42, v42, v11

    iget-wide v11, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v52, v11

    iget v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v28, v42, v5

    move-wide/from16 v54, v5

    int-to-long v5, v8

    mul-long v28, v28, v5

    div-long v5, v28, v18

    long-to-int v5, v5

    add-int/2addr v11, v5

    if-gez v11, :cond_d

    const/4 v5, 0x0

    move v11, v5

    :cond_d
    iget v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v5, v5, v23

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v6, v4

    add-int/lit8 v12, v23, -0x1

    mul-int/2addr v6, v12

    div-int v6, v6, v22

    sub-int/2addr v5, v6

    if-eq v10, v11, :cond_15

    if-eq v9, v5, :cond_15

    iget-byte v6, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v6, v12, :cond_e

    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    :goto_9
    goto :goto_a

    :cond_e
    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v6, v12, :cond_f

    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    :goto_a
    if-eq v12, v7, :cond_12

    if-eqz v7, :cond_10

    move/from16 v56, v4

    int-to-float v4, v11

    move/from16 v57, v6

    int-to-float v6, v5

    invoke-virtual {v7, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_b

    :cond_10
    move/from16 v56, v4

    move/from16 v57, v6

    :goto_b
    if-eqz v12, :cond_11

    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_11
    move-object v4, v12

    move-object v7, v4

    goto :goto_c

    :cond_12
    move/from16 v56, v4

    move/from16 v57, v6

    if-eqz v12, :cond_13

    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v12, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_13
    :goto_c
    if-nez v3, :cond_14

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v11

    move/from16 v27, v4

    goto :goto_d

    :cond_14
    int-to-float v4, v11

    int-to-float v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_d
    move v10, v11

    move v9, v5

    goto :goto_e

    :cond_15
    move/from16 v56, v4

    :goto_e
    iget-boolean v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v4, :cond_2f

    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    :goto_f
    if-eq v4, v2, :cond_18

    if-eqz v4, :cond_17

    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v12, v11

    move/from16 v58, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v6, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_10

    :cond_17
    move/from16 v58, v2

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v11

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v12, v13, v12

    int-to-float v12, v12

    invoke-virtual {v2, v6, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_10
    move v2, v4

    goto :goto_11

    :cond_18
    move/from16 v58, v2

    :goto_11
    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, 0x100000

    and-int/2addr v6, v12

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    :goto_12
    if-eq v6, v1, :cond_1b

    if-eqz v6, :cond_1a

    iget-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v59, v1

    int-to-float v1, v11

    move/from16 v60, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_13

    :cond_1a
    move/from16 v59, v1

    move/from16 v60, v2

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, v11

    iget v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v12, v13, v12

    int-to-float v12, v12

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_13
    move v1, v6

    goto :goto_14

    :cond_1b
    move/from16 v59, v1

    move/from16 v60, v2

    :goto_14
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v12, 0x20000000

    and-int/2addr v2, v12

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_15

    :cond_1c
    const/4 v2, 0x0

    :goto_15
    move/from16 v12, v51

    if-eq v2, v12, :cond_1e

    if-eqz v2, :cond_1d

    move/from16 v61, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v62, v3

    int-to-float v3, v11

    move/from16 v63, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_16

    :cond_1d
    move/from16 v61, v1

    move-object/from16 v62, v3

    move/from16 v63, v4

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_16
    move v1, v2

    move v12, v1

    goto :goto_17

    :cond_1e
    move/from16 v61, v1

    move-object/from16 v62, v3

    move/from16 v63, v4

    :goto_17
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x8000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    :goto_18
    move/from16 v4, v49

    if-eq v1, v4, :cond_21

    if-eqz v1, :cond_20

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move/from16 v64, v2

    int-to-float v2, v11

    move/from16 v65, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_19

    :cond_20
    move/from16 v64, v2

    move/from16 v65, v4

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_19
    move v2, v1

    move/from16 v65, v2

    goto :goto_1a

    :cond_21
    move/from16 v64, v2

    move/from16 v65, v4

    :goto_1a
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_1b

    :cond_22
    const/4 v2, 0x0

    :goto_1b
    move/from16 v4, v45

    if-eq v2, v4, :cond_24

    if-eqz v2, :cond_23

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    move/from16 v66, v1

    int-to-float v1, v11

    move/from16 v67, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1c

    :cond_23
    move/from16 v66, v1

    move/from16 v67, v4

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1c
    move v1, v2

    move/from16 v45, v1

    goto :goto_1d

    :cond_24
    move/from16 v66, v1

    move/from16 v67, v4

    move/from16 v45, v67

    :goto_1d
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x0

    shr-int/2addr v1, v3

    move/from16 v4, v48

    if-eq v4, v1, :cond_25

    move v3, v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v30, 0x1

    move/from16 v4, v30

    move/from16 v36, v30

    nop

    move/from16 v48, v3

    const/16 v31, 0x0

    goto :goto_1e

    :pswitch_0
    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v4, v31

    move/from16 v36, v31

    nop

    move/from16 v48, v3

    goto :goto_1e

    :cond_25
    const/16 v30, 0x1

    const/16 v31, 0x0

    move/from16 v48, v4

    move/from16 v4, v36

    :goto_1e
    move/from16 v3, v36

    move/from16 v68, v1

    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v25, 0x18010000

    and-int v1, v1, v25

    if-eqz v1, :cond_26

    const/4 v3, 0x1

    :cond_26
    move/from16 v1, v46

    if-eq v3, v1, :cond_28

    if-eqz v3, :cond_27

    move/from16 v69, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v70, v2

    int-to-float v2, v11

    move/from16 v71, v4

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1f

    :cond_27
    move/from16 v69, v1

    move/from16 v70, v2

    move/from16 v71, v4

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1f
    move v1, v3

    move/from16 v46, v1

    goto :goto_20

    :cond_28
    move/from16 v69, v1

    move/from16 v70, v2

    move/from16 v71, v4

    move/from16 v46, v69

    :goto_20
    iget v1, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    move/from16 v1, v30

    goto :goto_21

    :cond_29
    move/from16 v1, v31

    :goto_21
    move/from16 v2, v47

    if-eq v1, v2, :cond_2b

    if-eqz v1, :cond_2a

    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    move/from16 v72, v2

    int-to-float v2, v11

    move/from16 v73, v3

    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v3, v13, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_22

    :cond_2a
    move/from16 v72, v2

    move/from16 v73, v3

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v3, v11

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v4, v13, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_22
    move v2, v1

    move/from16 v47, v2

    goto :goto_23

    :cond_2b
    move/from16 v72, v2

    move/from16 v73, v3

    move/from16 v47, v72

    :goto_23
    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_2e

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0x1c0

    const/4 v3, 0x6

    shr-int/2addr v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x0

    :goto_24
    const/16 v21, 0x2

    const/16 v24, 0x3

    goto :goto_25

    :cond_2c
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_24

    :cond_2d
    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v2, v2, 0x38

    const/16 v24, 0x3

    shr-int/lit8 v2, v2, 0x3

    const/16 v21, 0x2

    add-int/lit8 v2, v2, 0x2

    :goto_25
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v3, v11, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    goto :goto_26

    :cond_2e
    const/16 v21, 0x2

    const/16 v24, 0x3

    :goto_26
    move-object/from16 v34, v0

    move/from16 v26, v5

    move/from16 v76, v8

    move/from16 v25, v11

    move v11, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v20, v50

    move-wide/from16 v28, v52

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v2, v60

    move/from16 v1, v61

    move-object/from16 v3, v62

    move/from16 v14, v65

    move/from16 v36, v71

    goto/16 :goto_2d

    :cond_2f
    move/from16 v59, v1

    move/from16 v58, v2

    move-object/from16 v62, v3

    move/from16 v67, v45

    move/from16 v69, v46

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v65, v49

    move/from16 v12, v51

    const/16 v21, 0x2

    const/16 v24, 0x3

    move-object/from16 v34, v0

    move/from16 v26, v5

    move/from16 v76, v8

    move/from16 v25, v11

    move v11, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v20, v50

    move-wide/from16 v28, v52

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v14, v65

    const/16 v77, 0x0

    goto/16 :goto_2d

    :cond_30
    move/from16 v59, v1

    move/from16 v58, v2

    move/from16 v56, v4

    move-wide/from16 v54, v5

    move/from16 v50, v12

    move/from16 v67, v45

    move/from16 v69, v46

    move/from16 v72, v47

    move/from16 v4, v48

    move/from16 v65, v49

    const/16 v21, 0x2

    const/16 v24, 0x3

    const/16 v30, 0x1

    const/16 v31, 0x0

    move v12, v11

    move-wide/from16 v32, v42

    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_32

    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v1, v5, :cond_31

    goto :goto_27

    :cond_31
    move-object/from16 v74, v3

    move/from16 v75, v4

    goto :goto_29

    :cond_32
    :goto_27
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v74, v3

    iget-wide v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v1, v5, v2

    if-ltz v1, :cond_33

    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v42, v1

    move/from16 v75, v4

    goto :goto_28

    :cond_33
    iget-wide v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v75, v4

    iget-wide v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v5, v3

    add-long/2addr v1, v5

    move-wide/from16 v42, v1

    :goto_28
    iget-wide v1, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v28, v1

    :goto_29
    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v11, 0x6

    if-eq v1, v11, :cond_36

    iget-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_35

    sub-long v1, v32, v42

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    goto :goto_2a

    :cond_34
    move-object/from16 v34, v0

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v30, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v20, v50

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v38, v58

    move/from16 v35, v59

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v37, v69

    move/from16 v39, v72

    move-object/from16 v40, v74

    move/from16 v46, v75

    move/from16 v24, v9

    move/from16 v31, v10

    goto/16 :goto_2b

    :cond_35
    :goto_2a
    if-eqz v74, :cond_36

    add-int/lit8 v1, v25, 0x1

    move-object/from16 v34, v0

    move-object v0, v15

    move/from16 v35, v59

    move/from16 v37, v69

    move/from16 v38, v58

    move/from16 v39, v72

    move v2, v13

    move-object/from16 v40, v74

    move/from16 v3, v23

    move/from16 v41, v56

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v46, v75

    move/from16 v4, v27

    move-wide/from16 v47, v54

    move v5, v9

    move-object/from16 v6, v40

    move-object/from16 v21, v7

    move v7, v10

    move/from16 v76, v8

    move/from16 v8, v38

    move/from16 v49, v24

    move/from16 v24, v9

    move/from16 v9, v35

    move/from16 v77, v31

    move/from16 v31, v10

    move v10, v12

    move/from16 v51, v14

    move/from16 v14, v30

    move/from16 v30, v12

    move v12, v11

    move/from16 v11, v44

    move/from16 v20, v50

    move/from16 v12, v45

    move/from16 v13, v37

    move/from16 v14, v39

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    const/4 v0, -0x1

    move v9, v0

    move v10, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move/from16 v0, v77

    move/from16 v45, v77

    move/from16 v14, v77

    move/from16 v11, v77

    move/from16 v1, v77

    move/from16 v2, v77

    move/from16 v72, v0

    goto :goto_2c

    :cond_36
    move-object/from16 v34, v0

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v30, v12

    move/from16 v51, v14

    move/from16 v49, v24

    move/from16 v77, v31

    move/from16 v20, v50

    move-wide/from16 v47, v54

    move/from16 v41, v56

    move/from16 v38, v58

    move/from16 v35, v59

    move/from16 v44, v65

    move/from16 v45, v67

    move/from16 v37, v69

    move/from16 v39, v72

    move-object/from16 v40, v74

    move/from16 v46, v75

    move/from16 v24, v9

    move/from16 v31, v10

    :goto_2b
    move-object/from16 v7, v21

    move/from16 v9, v24

    move/from16 v11, v30

    move/from16 v10, v31

    move/from16 v1, v35

    move/from16 v2, v38

    move/from16 v72, v39

    move-object/from16 v3, v40

    move/from16 v14, v44

    :goto_2c
    move/from16 v4, v46

    move/from16 v46, v37

    :goto_2d
    add-int/lit8 v12, v20, 0x1

    move/from16 v13, p2

    move-object/from16 v0, v34

    move-wide/from16 v5, v47

    move/from16 v47, v72

    move/from16 v8, v76

    move-object/from16 v15, p0

    move/from16 v48, v4

    move/from16 v4, v41

    move/from16 v41, v51

    goto/16 :goto_8

    :cond_37
    move-object/from16 v34, v0

    move/from16 v35, v1

    move/from16 v38, v2

    move-object/from16 v40, v3

    move/from16 v41, v4

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v24, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v20, v12

    move/from16 v51, v14

    move/from16 v37, v46

    move/from16 v39, v47

    move/from16 v46, v48

    move/from16 v44, v49

    const/16 v77, 0x0

    move-wide/from16 v47, v5

    goto :goto_2e

    :cond_38
    move-object/from16 v34, v0

    move/from16 v35, v1

    move/from16 v38, v2

    move-object/from16 v40, v3

    move-object/from16 v21, v7

    move/from16 v76, v8

    move/from16 v24, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v20, v12

    move/from16 v51, v41

    move/from16 v37, v46

    move/from16 v39, v47

    move/from16 v46, v48

    move/from16 v44, v49

    const/16 v77, 0x0

    move/from16 v41, v4

    move-wide/from16 v47, v5

    :goto_2e
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move/from16 v7, v25

    move/from16 v12, v26

    move-wide/from16 v33, v28

    move/from16 v32, v30

    move/from16 v25, v31

    move/from16 v31, v35

    move/from16 v35, v37

    move/from16 v30, v38

    move/from16 v37, v39

    move-object/from16 v28, v40

    move-object/from16 v29, v21

    move/from16 v26, v24

    goto :goto_2f

    :cond_39
    move-wide/from16 v47, v5

    move/from16 v76, v8

    move/from16 v51, v41

    const/16 v77, 0x0

    move/from16 v41, v4

    move/from16 v20, v27

    move/from16 v44, v33

    move/from16 v45, v34

    move/from16 v46, v38

    move-wide/from16 v33, v2

    move/from16 v27, v9

    :goto_2f
    if-ltz v26, :cond_3c

    if-gez v25, :cond_3a

    move/from16 v14, v76

    goto :goto_30

    :cond_3a
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget-wide v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    sub-long v1, v1, v47

    move/from16 v14, v76

    int-to-long v3, v14

    mul-long/2addr v1, v3

    div-long v1, v1, v18

    long-to-int v1, v1

    add-int/2addr v0, v1

    if-gez v0, :cond_3b

    const/4 v0, 0x0

    :cond_3b
    move v13, v0

    move/from16 v21, v12

    move/from16 v12, v26

    goto :goto_33

    :cond_3c
    move/from16 v14, v76

    :goto_30
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    move v1, v0

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v2, v2, v23

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    sub-int v3, v3, v41

    add-int/lit8 v4, v23, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v22

    sub-int/2addr v2, v3

    move v3, v2

    move v12, v2

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    int-to-byte v2, v2

    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v2, v4, :cond_3d

    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    :goto_31
    goto :goto_32

    :cond_3d
    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v2, v4, :cond_3e

    iget-object v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_31

    :cond_3e
    const/4 v4, 0x0

    :goto_32
    if-eqz v4, :cond_3f

    int-to-float v5, v0

    int-to-float v6, v12

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v29, v4

    :cond_3f
    iget-object v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v6, v0

    int-to-float v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move/from16 v0, p1

    nop

    move v13, v0

    move/from16 v25, v1

    move-object/from16 v28, v5

    move/from16 v21, v12

    move v12, v3

    :goto_33
    move-object v0, v15

    move v1, v13

    move/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, v27

    move v5, v12

    move-object/from16 v6, v28

    move/from16 v7, v25

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v10, v32

    move/from16 v11, v44

    move/from16 v78, v12

    move/from16 v12, v45

    move/from16 v79, v13

    move/from16 v13, v35

    move/from16 v24, v14

    move/from16 v14, v37

    move-object/from16 v15, v29

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    move/from16 v0, p1

    move/from16 v1, v79

    if-ge v1, v0, :cond_41

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v4, v1

    move/from16 v5, v78

    int-to-float v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v3, v3, v23

    rsub-int/lit8 v4, v41, 0x64

    add-int/lit8 v6, v23, -0x1

    mul-int/2addr v4, v6

    div-int v4, v4, v22

    sub-int/2addr v3, v4

    iget v4, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v4, v4, v23

    move/from16 v6, v77

    rsub-int/lit8 v10, v41, 0x0

    add-int/lit8 v7, v23, -0x1

    mul-int/2addr v10, v7

    div-int v10, v10, v22

    sub-int/2addr v4, v10

    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v7, v7, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v7, :cond_40

    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_34

    :cond_40
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v8, v8

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_34
    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    goto :goto_35

    :cond_41
    move/from16 v6, v77

    move/from16 v5, v78

    move-object/from16 v2, p0

    :goto_35
    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_48

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_48

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-wide v7, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xe

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v8, 0xd

    invoke-virtual {v4, v8, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xc

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iget-wide v12, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v12, v10, v12

    const/16 v13, 0xb

    if-gez v12, :cond_42

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v14, 0x1

    add-int/2addr v12, v14

    invoke-virtual {v4, v13, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    goto :goto_36

    :cond_42
    const/4 v14, 0x1

    :goto_36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v12, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12, v8, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12, v9, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    cmp-long v15, v10, v13

    const-wide/16 v38, 0x2

    if-gez v15, :cond_44

    iget v15, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v9, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v4, v15, v9, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iget-wide v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-object/from16 v80, v9

    iget-wide v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    move/from16 v81, v1

    iget-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    sub-long/2addr v8, v0

    div-long v8, v8, v38

    add-long/2addr v6, v8

    move-object/from16 v0, v80

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x0

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-lez v1, :cond_43

    cmp-long v1, v6, v13

    if-gez v1, :cond_43

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v0, v1, v8, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    :cond_43
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v12, v1, v8, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    goto :goto_37

    :cond_44
    move/from16 v81, v1

    :goto_37
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v1, v6, :cond_45

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v12, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_49

    :cond_45
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v1

    const/4 v6, 0x0

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_46

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    invoke-virtual {v4, v0, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    :cond_46
    const/4 v0, 0x0

    const/16 v8, 0xb

    invoke-virtual {v12, v8, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_47

    iget v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v10, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v4, v0, v10, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sub-long v10, v8, v6

    div-long v10, v10, v38

    add-long/2addr v10, v6

    const-wide/32 v13, 0x6ddd00

    add-long/2addr v10, v13

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v10, 0x0

    const/16 v11, 0xb

    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    invoke-virtual {v0, v11, v10}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v13, v10, v6

    if-lez v13, :cond_47

    cmp-long v13, v10, v8

    if-gez v13, :cond_47

    iget v13, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v14, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v0, v13, v14, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    :cond_47
    iget v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v10, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v2, v12, v0, v10, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    goto :goto_38

    :cond_48
    move/from16 v81, v1

    :cond_49
    :goto_38
    iget-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v3, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    sub-long/2addr v3, v6

    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto :goto_39

    :cond_4a
    const/4 v0, 0x0

    iput-object v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    :goto_39
    return-void

    :cond_4b
    :goto_3a
    move-object v2, v15

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 8

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f12023c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f120243

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f12023f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f12023b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f12023e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f120245

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f120244

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f120242

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryChart$O1ddbx0WxFm_LlbjYiwVyWtFoUA;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryChart;Landroid/os/BatteryStats;)V

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {v2, v6, v7, v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    return-void
.end method
