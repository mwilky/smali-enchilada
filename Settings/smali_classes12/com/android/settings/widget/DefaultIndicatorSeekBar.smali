.class public Lcom/android/settings/widget/DefaultIndicatorSeekBar;
.super Landroid/widget/SeekBar;
.source "DefaultIndicatorSeekBar.java"


# instance fields
.field private mDefaultProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return-void
.end method


# virtual methods
.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMax()I

    move-result v1

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMin()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getTickMark()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    div-int/lit8 v4, v1, 0x2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-ltz v2, :cond_1

    div-int/lit8 v3, v2, 0x2

    nop

    :cond_1
    neg-int v5, v4

    neg-int v6, v3

    invoke-virtual {v0, v5, v6, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v7, v6

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget v7, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v8, v7, v8

    nop

    :cond_2
    move v7, v8

    int-to-float v8, v5

    mul-float/2addr v8, v7

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getMirrorForRtl()Z

    move-result v9

    if-eqz v9, :cond_3

    sub-int v9, v5, v8

    iget v10, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingRight:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_3
    iget v9, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mPaddingLeft:I

    add-int/2addr v9, v8

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    int-to-float v11, v9

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public getDefaultProgress()I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    return v0
.end method

.method public setDefaultProgress(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->mDefaultProgress:I

    invoke-virtual {p0}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->invalidate()V

    :cond_0
    return-void
.end method
