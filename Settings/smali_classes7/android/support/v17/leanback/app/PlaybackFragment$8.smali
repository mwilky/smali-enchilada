.class Landroid/support/v17/leanback/app/PlaybackFragment$8;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;->loadControlRowAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/PlaybackFragment;

    .line 537
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .line 540
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    .line 544
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 545
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_1

    .line 546
    return-void

    .line 548
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 549
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 550
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 552
    .local v2, "fraction":F
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 553
    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment$8;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget v3, v3, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 555
    .end local v2    # "fraction":F
    :cond_2
    return-void
.end method
