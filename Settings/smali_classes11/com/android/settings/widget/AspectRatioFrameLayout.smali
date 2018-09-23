.class public final Lcom/android/settings/widget/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final ASPECT_RATIO_CHANGE_THREASHOLD:F = 0.01f


# instance fields
.field mAspectRatio:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/settings/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    return-void

    :cond_1
    int-to-float v4, v1

    iget v5, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v5, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    return-void
.end method
