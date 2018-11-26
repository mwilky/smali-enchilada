.class public Lcom/android/settings/widget/DonutView;
.super Landroid/view/View;
.source "DonutView.java"


# static fields
.field private static final LINE_CHARACTER_LIMIT:I = 0xa

.field private static final TOP:I = -0x5a


# instance fields
.field private mBackgroundCircle:Landroid/graphics/Paint;

.field private mBigNumberPaint:Landroid/text/TextPaint;

.field private mFilledArc:Landroid/graphics/Paint;

.field private mFullString:Ljava/lang/String;

.field private mMeterBackgroundColor:I

.field private mMeterConsumedColor:I

.field private mPercent:D

.field private mPercentString:Ljava/lang/String;

.field private mShowPercentString:Z

.field private mStrokeWidth:F

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    const v1, 0x7f060260

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    iget-object v1, p0, Lcom/android/settings/widget/DonutView;->mContext:Landroid/content/Context;

    const v2, 0x7f060261

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070409

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    sget-object v4, Lcom/android/settings/R$styleable;->DonutView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {v4, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {v4, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v1, :cond_1

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x1010435

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-nez v5, :cond_2

    nop

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    const v8, 0x7f07040a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setBidiFlags(I)V

    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    const v7, 0x7f07040c

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    const v7, 0x1040157

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setBidiFlags(I)V

    return-void
.end method

.method private drawDonut(Landroid/graphics/Canvas;)V
    .locals 11

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    const/4 v1, 0x0

    add-float v3, v1, v0

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v2

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v2

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v3, v1, v0

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v5, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v6, v0, v1

    iget-wide v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    double-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v8, v1, v0

    iget-object v10, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawInnerText(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v4

    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v5}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v6, v3

    new-instance v7, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v7}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/android/settings/widget/DonutView;->getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v8

    new-instance v9, Landroid/text/StaticLayout;

    iget-object v12, v0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v13

    sget-object v14, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v9

    move-object v11, v8

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v4

    div-float/2addr v10, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v9, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v5, v0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float v10, v6, v10

    iget-object v11, v0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v5, v2, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static getPercentageStringSpannable(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    nop

    const v0, 0x7f07040b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f07040c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v0, v1

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x22

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private getTextHeight(Landroid/text/TextPaint;)F
    .locals 2

    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMeterBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    return v0
.end method

.method public getMeterConsumedColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    iget v0, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawDonut(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/DonutView;->mShowPercentString:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawInnerText(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setMeterBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterBackgroundColor:I

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method

.method public setMeterConsumedColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/settings/widget/DonutView;->mMeterConsumedColor:I

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method

.method public setPercentage(D)V
    .locals 5

    iput-wide p1, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    iget-wide v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:D

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07040d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120783

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DonutView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    return-void
.end method
