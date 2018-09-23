.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# static fields
.field private static final ESTIMATE_ENABLED:Z = false

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "ChartNetworkSeriesView"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    sget-object v1, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/high16 v2, -0x10000

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    invoke-virtual {p0, v5}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    return-void
.end method

.method private generatePath()V
    .locals 25

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v2

    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v6, v4}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v11, v12, v13}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v11

    iget-object v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v13, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v12, v13, v14}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v12

    move v13, v4

    move v4, v11

    :goto_0
    if-gt v4, v12, :cond_3

    iget-object v15, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v15, v4, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move/from16 v17, v11

    move/from16 v18, v12

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v11, v14

    move/from16 v19, v1

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v1, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v1

    move/from16 v20, v3

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v11, v12}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v3

    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_1

    move/from16 v23, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v21, v11

    iget-wide v11, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move/from16 v23, v2

    move/from16 v24, v3

    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v2

    add-long/2addr v8, v11

    move v2, v5

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v8, v9}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v3

    cmp-long v11, v6, v14

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v12, v24

    invoke-virtual {v11, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v11, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v11, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v11, v12

    move v5, v3

    move-wide/from16 v1, v21

    move-wide v6, v1

    move v13, v11

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v1, v19

    move/from16 v3, v20

    move/from16 v2, v23

    goto :goto_0

    :cond_3
    move/from16 v19, v1

    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v17, v11

    move/from16 v18, v12

    iget-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v1, v6, v1

    if-gez v1, :cond_4

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v2, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v1, v2, v3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v13

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v1, v13, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    move/from16 v2, v23

    int-to-float v3, v2

    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    int-to-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iput-wide v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public getMaxEstimate()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v2

    iget-wide v3, v2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v5

    return-wide v3

    :cond_1
    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidatePath()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    return-void
.end method

.method public setChartColor(III)V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    return-void
.end method

.method public setSecondary(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    return-void
.end method
