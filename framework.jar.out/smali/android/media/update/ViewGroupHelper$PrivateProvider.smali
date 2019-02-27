.class public Landroid/media/update/ViewGroupHelper$PrivateProvider;
.super Ljava/lang/Object;
.source "ViewGroupHelper.java"

# interfaces
.implements Landroid/media/update/ViewGroupProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/ViewGroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/update/ViewGroupHelper;


# direct methods
.method public constructor <init>(Landroid/media/update/ViewGroupHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateDefaultLayoutParams_impl()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams_impl(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityClassName_impl()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedMinimumHeight_impl()I
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getSuggestedMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth_impl()I
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->getSuggestedMinimumWidth()I

    move-result v0

    return v0
.end method

.method public measureChildWithMargins_impl(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onAttachedToWindow_impl()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow_impl()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate_impl()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->onFinishInflate()V

    return-void
.end method

.method public onLayout_impl(ZIIII)V
    .locals 6

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure_impl(II)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1, p2}, Landroid/media/update/ViewGroupHelper;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated_impl(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public setEnabled_impl(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0, p1}, Landroid/media/update/ViewGroupHelper;->setEnabled(Z)V

    return-void
.end method

.method public setMeasuredDimension_impl(II)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {v0, p1, p2}, Landroid/media/update/ViewGroupHelper;->access$1900(Landroid/media/update/ViewGroupHelper;II)V

    return-void
.end method

.method public shouldDelayChildPressedState_impl()Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$PrivateProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-virtual {v0}, Landroid/media/update/ViewGroupHelper;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method
