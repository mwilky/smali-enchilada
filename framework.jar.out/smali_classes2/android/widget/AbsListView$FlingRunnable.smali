.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSuppressIdleStateChangeCall:Z

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    .line 4716
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4689
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4717
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4718
    invoke-static {p1}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4719
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const v0, 0x3c03126f    # 0.008f

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 4720
    iget-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->setIsCreatedByAbsListView(Z)V

    .line 4722
    :cond_0
    return-void
.end method

.method static synthetic access$1900(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;

    .line 4672
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$502(Landroid/widget/AbsListView$FlingRunnable;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsListView$FlingRunnable;
    .param p1, "x1"    # Z

    .line 4672
    iput-boolean p1, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    return p1
.end method


# virtual methods
.method edgeReached(I)V
    .locals 4
    .param p1, "delta"    # I

    .line 4779
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4780
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 4781
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 4782
    invoke-static {v1}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4791
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4792
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    .line 4793
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_2

    .line 4783
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4784
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 4785
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 4786
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 4788
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4790
    .end local v1    # "vel":I
    :goto_1
    nop

    .line 4796
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    .line 4797
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4798
    return-void
.end method

.method endFling()V
    .locals 2

    .line 4812
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4814
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4815
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4817
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    if-nez v0, :cond_0

    .line 4818
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4820
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)V

    .line 4821
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4823
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4824
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4825
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4827
    :cond_1
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .line 4830
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4831
    return-void
.end method

.method public run()V
    .locals 20

    .line 4835
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    packed-switch v1, :pswitch_data_0

    .line 4837
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4838
    return-void

    .line 4841
    :pswitch_0
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4842
    return-void

    .line 4846
    :cond_0
    :pswitch_1
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v1, v1, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 4847
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4850
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 4855
    :cond_2
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4856
    .local v1, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    .line 4857
    .local v2, "more":Z
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v5

    .line 4861
    .local v5, "y":I
    iget v6, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v6, v5

    .line 4864
    .local v6, "delta":I
    if-lez v6, :cond_3

    .line 4866
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v8, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4867
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4868
    .local v7, "firstView":Landroid/view/View;
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, v8, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4871
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v9}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4872
    .end local v7    # "firstView":Landroid/view/View;
    goto :goto_0

    .line 4874
    :cond_3
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    .line 4875
    .local v7, "offsetToLast":I
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v7

    iput v9, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4877
    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4878
    .local v8, "lastView":Landroid/view/View;
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4881
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v10}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v10}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v4

    neg-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4885
    .end local v7    # "offsetToLast":I
    .end local v8    # "lastView":Landroid/view/View;
    :goto_0
    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v9, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4886
    .local v7, "motionView":Landroid/view/View;
    const/4 v8, 0x0

    .line 4887
    .local v8, "oldTop":I
    if-eqz v7, :cond_4

    .line 4888
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4892
    :cond_4
    iget-object v9, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, v6, v6}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v9

    .line 4893
    .local v9, "atEdge":Z
    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    move v3, v4

    nop

    .line 4894
    .local v3, "atEnd":Z
    :cond_5
    if-eqz v3, :cond_7

    .line 4895
    if-eqz v7, :cond_6

    .line 4897
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v8

    sub-int v4, v6, v4

    neg-int v4, v4

    .line 4898
    .local v4, "overshoot":I
    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-object v12, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v12}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v12, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v12, v12, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/16 v19, 0x0

    move/from16 v18, v12

    move v12, v4

    invoke-static/range {v10 .. v19}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 4901
    .end local v4    # "overshoot":I
    :cond_6
    if-eqz v2, :cond_13

    .line 4902
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_6

    .line 4907
    :cond_7
    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    .line 4908
    if-eqz v9, :cond_8

    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->invalidate()V

    .line 4909
    :cond_8
    iput v5, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4910
    iget-object v4, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    .line 4912
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4926
    goto/16 :goto_6

    .line 4851
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    .end local v2    # "more":Z
    .end local v3    # "atEnd":Z
    .end local v5    # "y":I
    .end local v6    # "delta":I
    .end local v7    # "motionView":Landroid/view/View;
    .end local v8    # "oldTop":I
    .end local v9    # "atEdge":Z
    :cond_a
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4852
    return-void

    .line 4930
    :cond_b
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4931
    .restart local v1    # "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4932
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)I

    move-result v2

    .line 4933
    .local v2, "scrollY":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v15

    .line 4934
    .local v15, "currY":I
    sub-int v16, v15, v2

    .line 4935
    .local v16, "deltaY":I
    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v7, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v7, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    move/from16 v7, v16

    move v9, v2

    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$3900(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 4937
    if-gtz v2, :cond_c

    if-lez v15, :cond_c

    move v5, v4

    goto :goto_2

    :cond_c
    move v5, v3

    .line 4938
    .local v5, "crossDown":Z
    :goto_2
    if-ltz v2, :cond_d

    if-gez v15, :cond_d

    move v3, v4

    nop

    .line 4939
    .local v3, "crossUp":Z
    :cond_d
    if-nez v5, :cond_f

    if-eqz v3, :cond_e

    goto :goto_3

    .line 4947
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    .end local v3    # "crossUp":Z
    .end local v5    # "crossDown":Z
    goto :goto_4

    .line 4940
    .restart local v3    # "crossUp":Z
    .restart local v5    # "crossDown":Z
    :cond_f
    :goto_3
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    .line 4941
    .local v4, "velocity":I
    if-eqz v3, :cond_10

    neg-int v4, v4

    .line 4944
    :cond_10
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4945
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 4946
    .end local v4    # "velocity":I
    nop

    .line 4949
    .end local v3    # "crossUp":Z
    .end local v5    # "crossDown":Z
    :goto_4
    goto :goto_5

    .line 4950
    :cond_11
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->invalidate()V

    .line 4951
    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4953
    .end local v2    # "scrollY":I
    .end local v15    # "currY":I
    .end local v16    # "deltaY":I
    :goto_5
    goto :goto_6

    .line 4954
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4956
    nop

    .line 4959
    .end local v1    # "scroller":Landroid/widget/OverScroller;
    :cond_13
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method start(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .line 4725
    const/4 v0, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4726
    .local v1, "initialY":I
    :goto_0
    iput v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4727
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4728
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4729
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v4, v1

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->op_fling(IIIIIIII)V

    goto :goto_1

    .line 4732
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const v10, 0x7fffffff

    move v4, v1

    move v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4735
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x4

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4736
    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 4737
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4746
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4747
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v2, "AbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/widget/AbsListView;->access$2302(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4749
    :cond_2
    return-void
.end method

.method startOverfling(I)V
    .locals 24
    .param p1, "initialVelocity"    # I

    move-object/from16 v0, p0

    .line 4764
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4765
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4766
    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 4767
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    .line 4766
    move/from16 v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->op_fling(IIIIIIIIII)V

    goto :goto_0

    .line 4769
    :cond_0
    iget-object v13, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v14, 0x0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/high16 v20, -0x80000000

    const v21, 0x7fffffff

    const/16 v22, 0x0

    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 4770
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v23

    .line 4769
    move/from16 v17, p1

    invoke-virtual/range {v13 .. v23}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4772
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4773
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 4774
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    .line 4775
    iget-object v1, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4776
    return-void
.end method

.method startScroll(IIZZ)V
    .locals 7
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z
    .param p4, "suppressEndFlingStateChangeCall"    # Z

    .line 4802
    if-gez p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4803
    .local v0, "initialY":I
    :goto_0
    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4804
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v2, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4805
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4806
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x4

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4807
    iput-boolean p4, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 4808
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4809
    return-void
.end method

.method startSpringback()V
    .locals 8

    .line 4752
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mSuppressIdleStateChangeCall:Z

    .line 4753
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4754
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4755
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4756
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4758
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4759
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4761
    :goto_0
    return-void
.end method
