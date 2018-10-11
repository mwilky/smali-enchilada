.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$500(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3, p2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$600(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;)Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchX:F

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mInitialTouchY:F

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-static {v4, v5, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$700(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)I

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v5

    iget-object v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v6, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v5, v5, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v4, p2, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq v0, v3, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4, v0, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v4, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$400(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v2, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v3, v0, p2, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1000(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v3, :cond_3

    return-void

    :cond_3
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ltz v2, :cond_8

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v4, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v1, p2, v4, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$200(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_4
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$800(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput v1, v4, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    if-ne v4, v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v7}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$1100(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v8}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$300(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getMaxFlingVelocity()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_6
    if-nez v1, :cond_7

    const/4 v5, 0x1

    nop

    :cond_7
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mActivePointerId:I

    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$2;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v7, v7, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mSelectedFlags:I

    invoke-static {v6, p2, v7, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->access$900(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    nop

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
