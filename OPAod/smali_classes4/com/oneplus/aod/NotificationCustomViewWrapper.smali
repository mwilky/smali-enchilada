.class public Lcom/oneplus/aod/NotificationCustomViewWrapper;
.super Lcom/oneplus/aod/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# static fields
.field private static final CUSTOM_BACKGROUND_TAG:I = 0x7f09005a


# instance fields
.field private mBackgroundColor:I

.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

.field private mShouldInvertDark:Z

.field private mShowingLegacyBackground:Z


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 46
    new-instance v0, Lcom/oneplus/aod/ViewInvertHelper;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/oneplus/aod/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationCustomViewWrapper;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCustomViewWrapper;

    .line 35
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private isColorLight(I)Z
    .locals 4
    .param p1, "backgroundColor"    # I

    .line 114
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 114
    :goto_1
    return v0
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .locals 6
    .param p1, "dark"    # Z
    .param p2, "delay"    # J

    .line 72
    new-instance v1, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;-><init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;)V

    new-instance v5, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;

    invoke-direct {v5, p0, p1}, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;-><init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;Z)V

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 87
    return-void
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    return v0
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 100
    invoke-super {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 101
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 103
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f09005a

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 105
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 110
    :cond_1
    :goto_0
    iget v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-direct {p0, v2}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->isColorLight(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    .line 111
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 51
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/aod/NotificationViewWrapper;->setDark(ZZJ)V

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/oneplus/aod/ViewInvertHelper;->fade(ZJ)V

    goto :goto_1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ViewInvertHelper;->update(Z)V

    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 63
    if-eqz p2, :cond_4

    .line 64
    invoke-virtual {p0, p1, p3, p4}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    .line 69
    :goto_1
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 126
    invoke-super {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 127
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    .line 128
    return-void
.end method

.method protected updateGrayscale(Z)V
    .locals 3
    .param p1, "dark"    # Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->updateGrayscaleMatrix(F)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void
.end method
