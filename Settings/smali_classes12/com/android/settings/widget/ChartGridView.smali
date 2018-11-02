.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLabelColor:I

.field private mLabelEnd:Landroid/text/Layout;

.field private mLabelMid:Landroid/text/Layout;

.field private mLabelSize:I

.field private mLabelStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v1, Landroid/text/TextPaint;->density:F

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v1, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    float-to-int v10, v8

    invoke-virtual {v2, v3, v10, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v7}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_1

    aget v10, v7, v9

    int-to-float v11, v5

    add-float/2addr v11, v10

    int-to-float v12, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    float-to-int v12, v10

    invoke-virtual {v4, v12, v3, v11, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    nop

    :cond_2
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x0

    add-int v8, v1, v3

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v8

    sub-int v8, v0, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-int v9, v1, v3

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    iget-object v7, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    add-int v10, v1, v3

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    return-void
.end method

.method setBounds(JJ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    add-long v1, p1, p3

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    invoke-static {v0, p1, p2, p1, p2}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    invoke-static {v0, p3, p4, p3, p4}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/widget/ChartGridView;->makeLabel(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    return-void
.end method
