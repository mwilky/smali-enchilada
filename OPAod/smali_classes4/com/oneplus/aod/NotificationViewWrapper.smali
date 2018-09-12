.class public abstract Lcom/oneplus/aod/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"


# instance fields
.field protected mDark:Z

.field protected mDarkInitialized:Z

.field protected final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mDarkInitialized:Z

    .line 45
    iput-object p1, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 46
    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;)Lcom/oneplus/aod/NotificationViewWrapper;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 41
    new-instance v0, Lcom/oneplus/aod/NotificationCustomViewWrapper;

    invoke-direct {v0, p1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getCustomBackgroundColor()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mDarkInitialized:Z

    .line 66
    return-void
.end method

.method public setContentHeight(II)V
    .locals 0
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .line 108
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .line 56
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mDark:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mDarkInitialized:Z

    .line 58
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 105
    return-void
.end method

.method protected startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 72
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 73
    .local v0, "endIntensity":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 74
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    sget-object v3, Lcom/oneplus/doze/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 78
    if-eqz p5, :cond_2

    .line 79
    invoke-virtual {v1, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 82
    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "expandable"    # Z
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method

.method protected updateGrayscaleMatrix(F)V
    .locals 2
    .param p1, "intensity"    # F

    .line 85
    iget-object v0, p0, Lcom/oneplus/aod/NotificationViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 86
    return-void
.end method
