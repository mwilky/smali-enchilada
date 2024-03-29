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

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float v1, v0, v1

    iput v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->updateSelect(JJ)V

    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 4

    iget v0, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    :cond_0
    long-to-double v0, p1

    iget v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroid/support/v17/leanback/widget/RowPresenter;

    iget-object v3, p0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V

    return-void
.end method
