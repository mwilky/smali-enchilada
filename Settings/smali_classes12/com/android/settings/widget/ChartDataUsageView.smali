.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:J = 0xfaL

.field private static final MSG_UPDATE_AXIS:I = 0x64


# instance fields
.field private mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    new-instance v0, Lcom/android/settings/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(J)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    const/4 v2, 0x1

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/4 v2, 0x2

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/4 v2, 0x4

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x8

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    move-wide v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4

    const/16 v0, 0x64

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int v1, v0, v2

    const/16 v2, 0x12

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method private updateEstimateVisible()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    :cond_2
    const-wide/16 v4, 0x7

    mul-long/2addr v4, v2

    const-wide/16 v6, 0xa

    div-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    return-void
.end method

.method private updatePrimaryRange()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSecondary(Z)V

    :goto_0
    return-void
.end method

.method private updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v8

    if-lez v8, :cond_0

    const-wide/16 v9, 0xb

    mul-long/2addr v9, v2

    div-long v4, v9, v6

    goto :goto_0

    :cond_0
    if-gez v8, :cond_1

    const-wide/16 v9, 0x9

    mul-long/2addr v9, v2

    div-long v4, v9, v6

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :cond_2
    :goto_0
    iget-object v8, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v10}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v10, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v10}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v12}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    const-wide/16 v14, 0xc

    mul-long/2addr v12, v14

    div-long/2addr v12, v6

    const-wide/32 v6, 0x3200000

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v14, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    cmp-long v14, v4, v14

    if-eqz v14, :cond_6

    iput-wide v4, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    iget-object v14, v0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-wide/from16 v16, v2

    const-wide/16 v2, 0x0

    invoke-interface {v14, v2, v3, v4, v5}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v14

    iget-object v15, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    iget-object v15, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v15, v2, v3, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    if-eqz v14, :cond_3

    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    :cond_3
    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/widget/ChartSweepView;->updateValueFromPosition()V

    :cond_4
    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    if-eq v2, v1, :cond_5

    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    :cond_5
    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    if-eq v2, v1, :cond_7

    iget-object v2, v0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    goto :goto_1

    :cond_6
    move-wide/from16 v16, v2

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEndTime(J)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    return-void
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7

    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    return-void

    :cond_0
    iget-wide v3, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v5, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    :goto_0
    iget-wide v5, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v5, v1

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    return-void
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/widget/ChartView;->onFinishInflate()V

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    const v0, 0x7f0a04d1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    const v0, 0x7f0a0556

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const v0, 0x7f0a0557

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    return v2

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->setBounds(JJ)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectStart:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectEnd:J

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method
