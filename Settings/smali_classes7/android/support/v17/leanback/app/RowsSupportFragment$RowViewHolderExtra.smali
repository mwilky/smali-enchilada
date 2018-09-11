.class final Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RowViewHolderExtra"
.end annotation


# instance fields
.field final mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

.field final mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mSelectAnimator:Landroid/animation/TimeAnimator;

.field mSelectAnimatorDurationInUse:I

.field mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

.field mSelectLevelAnimDelta:F

.field mSelectLevelAnimStart:F

.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/RowsSupportFragment;
    .param p2, "ibvh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 93
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    .line 94
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    .line 95
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 96
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 97
    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 3
    .param p1, "select"    # Z
    .param p2, "immediate"    # Z

    .line 122
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 123
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    .local v0, "end":F
    :goto_0
    if-eqz p2, :cond_1

    .line 125
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorDuration:I

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    .line 128
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsSupportFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    .line 129
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    .line 130
    iget v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    .line 131
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    .line 133
    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 101
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->updateSelect(JJ)V

    .line 104
    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 4
    .param p1, "totalTime"    # J
    .param p3, "deltaTime"    # J

    .line 108
    iget v0, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 109
    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    .line 112
    .end local v0    # "fraction":F
    :cond_0
    long-to-double v0, p1

    iget v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 114
    .restart local v0    # "fraction":F
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 117
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 118
    .local v1, "level":F
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    .line 119
    return-void
.end method
