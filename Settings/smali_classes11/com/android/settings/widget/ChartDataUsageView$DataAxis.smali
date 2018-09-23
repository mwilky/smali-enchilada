.class public Lcom/android/settings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final LOG_SCALE:Z = false

.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 6

    const-wide/16 v2, 0x0

    const-wide v4, 0x10000000000L

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p3

    const/4 v0, 0x3

    invoke-static {p1, p3, p4, v0}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    sget-object v1, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string v3, "^1"

    invoke-static {p2, v1, v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v3, "^2"

    invoke-static {p2, v1, v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget-wide v1, v0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide v1
.end method

.method public convertToPoint(J)F
    .locals 5

    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long v1, p1, v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public convertToValue(F)J
    .locals 5

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 10

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(J)J

    move-result-wide v2

    div-long v4, v0, v2

    long-to-int v4, v4

    new-array v5, v4, [F

    iget-wide v6, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    const/4 v8, 0x0

    :goto_0
    array-length v9, v5

    if-ge v8, v9, :cond_0

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v9

    aput v9, v5, v8

    add-long/2addr v6, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    const/4 v0, 0x1

    return v0
.end method

.method public setSize(F)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAdjustAxis(J)I
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v0

    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    float-to-double v1, v0

    iget v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v3, v3

    const-wide v5, 0x3feb333333333333L    # 0.85

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method
