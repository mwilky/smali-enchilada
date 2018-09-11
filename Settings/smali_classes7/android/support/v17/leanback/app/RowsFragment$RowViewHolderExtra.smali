.class final Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
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

.field final synthetic this$0:Landroid/support/v17/leanback/app/RowsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/RowsFragment;
    .param p2, "ibvh"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 98
    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    .line 99
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    .line 100
    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 101
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 3
    .param p1, "select"    # Z
    .param p2, "immediate"    # Z

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    .line 128
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    .local v0, "end":F
    :goto_0
    if-eqz p2, :cond_1

    .line 130
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    .line 133
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    .line 134
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    .line 135
    iget v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    .line 136
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    .line 138
    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->updateSelect(JJ)V

    .line 109
    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 4
    .param p1, "totalTime"    # J
    .param p3, "deltaTime"    # J

    .line 113
    iget v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    .line 115
    .local v0, "fraction":F
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    .line 117
    .end local v0    # "fraction":F
    :cond_0
    long-to-double v0, p1

    iget v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 119
    .restart local v0    # "fraction":F
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 122
    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 123
    .local v1, "level":F
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    .line 124
    return-void
.end method
