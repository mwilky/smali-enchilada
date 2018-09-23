.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# static fields
.field private static final RESOLUTION:J = 0x80000L


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mShowWifi:Z

.field private mStart:J

.field private mSubId:I

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mShowWifi:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    const v0, 0x1010543

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v0, 0x1010038

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/4 v3, 0x2

    iget-wide v7, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const v4, 0x7f1204dd

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    invoke-direct {p0, v7, v8, v4, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_1
    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v5, 0x80000

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Lcom/android/settings/graph/UsageView;->setDividerLoc(I)V

    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v3, v5

    long-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-virtual {p1, v4, v3}, Lcom/android/settings/graph/UsageView;->setSideLabelWeights(FF)V

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const/4 v5, 0x1

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const v8, 0x7f1204de

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/graph/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/settings/utils/OPFormatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/oneplus/settings/utils/OPFormatter$BytesResult;

    move-result-object v0

    iget-object v2, v0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->units:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-le v3, v4, :cond_0

    iget-object v3, v0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->units:Ljava/lang/String;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->replaceFileSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->value:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v1, v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3
.end method

.method private toInt(J)I
    .locals 2

    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/graph/UsageView;)V
    .locals 17
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v5, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v5, v6, v7}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v5

    iget-object v6, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v7, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v6, v7, v8}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v6

    if-gez v5, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    move-wide v7, v3

    move-object v3, v2

    move v2, v5

    :goto_0
    if-gt v2, v6, :cond_2

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v9, v2, v3}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    iget-wide v9, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v11, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v11, v9

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move v15, v5

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v13, v4

    add-long/2addr v7, v13

    if-nez v2, :cond_1

    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v9, v4

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v9, v4

    const-wide/16 v13, 0x1

    add-long/2addr v4, v13

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    const-wide/32 v13, 0x80000

    move/from16 v16, v6

    div-long v5, v7, v13

    long-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v4, v11, v4

    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v4

    div-long v5, v7, v13

    long-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    move v5, v15

    move/from16 v6, v16

    goto :goto_0

    :cond_2
    move v15, v5

    move/from16 v16, v6

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/settings/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p1

    :goto_1
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 13

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v4, v5, v6}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    move-wide v5, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    if-gt v0, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    iget-wide v7, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const-wide/32 v11, 0x80000

    div-long/2addr v9, v11

    long-to-int v0, v9

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0151

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/graph/UsageView;

    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/graph/UsageView;->clearPaths()V

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/graph/UsageView;->configureGraph(II)V

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/graph/UsageView;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 6

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnState(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    invoke-static {v1, v2}, Lcom/android/settings/datausage/OPDataUsageUtils;->getDataWarnBytes(Landroid/content/Context;I)J

    move-result-wide v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iput-wide v1, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Landroid/net/NetworkPolicy;->warningBytes:J

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setShowWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mShowWifi:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSubId:I

    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method
