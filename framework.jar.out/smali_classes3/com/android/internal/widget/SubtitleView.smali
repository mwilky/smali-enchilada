.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Landroid/text/SpannableStringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, ""

    const/16 v3, 0xf

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    nop

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v6, 0x12

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    goto :goto_1

    :pswitch_1
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10501a1

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    const v5, 0x10501a2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    const v5, 0x10501a4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const v5, 0x10501a3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeMeasurements(I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    return v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v2, v4, v5, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    iget v4, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    iget-object v8, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_1

    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v12, v11

    move v11, v10

    :goto_0
    if-ge v11, v5, :cond_1

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v4

    sub-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v4

    add-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->right:F

    iput v12, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v8, Landroid/graphics/RectF;->bottom:F

    iget v12, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v8, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v11, v10

    :goto_1
    if-ge v11, v5, :cond_3

    invoke-virtual {v2, v1, v11, v11}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x2

    if-ne v9, v12, :cond_4

    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    move/from16 v16, v4

    goto :goto_5

    :cond_4
    const/4 v12, 0x3

    if-eq v9, v12, :cond_5

    const/4 v13, 0x4

    if-ne v9, v13, :cond_3

    :cond_5
    if-ne v9, v12, :cond_6

    goto :goto_2

    :cond_6
    move v11, v10

    :goto_2
    const/4 v12, -0x1

    if-eqz v11, :cond_7

    move v13, v12

    goto :goto_3

    :cond_7
    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    :goto_3
    if-eqz v11, :cond_8

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    nop

    :cond_8
    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    neg-float v10, v14

    move/from16 v16, v4

    neg-float v4, v14

    invoke-virtual {v6, v15, v10, v4, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_9

    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v6, v4, v14, v14, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_5
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v5, :cond_a

    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v4, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x1000000

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setEdgeType(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v2, v2, p1

    :goto_0
    sget-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_1
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2

    :cond_2
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_3
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_4
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    return-void
.end method

.method public setText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    :cond_0
    return-void
.end method
