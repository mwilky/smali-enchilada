.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mImageEndMargin:I

.field private mIndentLines:I

.field private mLayoutMaxLines:I

.field private mMaxLinesForHeight:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    return-void
.end method


# virtual methods
.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v5

    if-ltz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v5

    goto :goto_1

    :cond_3
    const v5, 0x7fffffff

    :goto_1
    invoke-virtual {v2, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iput v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eqz p5, :cond_4

    invoke-virtual {v2, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    :cond_4
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v7, :cond_5

    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/2addr v7, v3

    new-array v6, v7, [I

    nop

    :goto_2
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v4, v7, :cond_5

    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v7, 0x0

    if-ne v4, v3, :cond_6

    invoke-virtual {v2, v6, v7}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v7, v6}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    :goto_3
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    return-object v3
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-le v2, v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    if-le v4, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v2, v3, :cond_3

    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHasImage(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    return-void
.end method

.method public setImageEndMargin(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    return-void
.end method

.method public setNumIndentLines(I)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
