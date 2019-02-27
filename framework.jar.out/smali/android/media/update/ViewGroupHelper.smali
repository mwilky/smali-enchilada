.class public abstract Landroid/media/update/ViewGroupHelper;
.super Landroid/view/ViewGroup;
.source "ViewGroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/update/ViewGroupHelper$ProviderCreator;,
        Landroid/media/update/ViewGroupHelper$PrivateProvider;,
        Landroid/media/update/ViewGroupHelper$SuperProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/media/update/ViewGroupProvider;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field public final mProvider:Landroid/media/update/ViewGroupProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/update/ViewGroupHelper$ProviderCreator;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/update/ViewGroupHelper$ProviderCreator<",
            "TT;>;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/media/update/ViewGroupHelper$SuperProvider;

    invoke-direct {v0, p0}, Landroid/media/update/ViewGroupHelper$SuperProvider;-><init>(Landroid/media/update/ViewGroupHelper;)V

    new-instance v1, Landroid/media/update/ViewGroupHelper$PrivateProvider;

    invoke-direct {v1, p0}, Landroid/media/update/ViewGroupHelper$PrivateProvider;-><init>(Landroid/media/update/ViewGroupHelper;)V

    invoke-interface {p1, p0, v0, v1}, Landroid/media/update/ViewGroupHelper$ProviderCreator;->createProvider(Landroid/media/update/ViewGroupHelper;Landroid/media/update/ViewGroupProvider;Landroid/media/update/ViewGroupProvider;)Landroid/media/update/ViewGroupProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    return-void
.end method

.method static synthetic access$001(Landroid/media/update/ViewGroupHelper;)Ljava/lang/CharSequence;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1001(Landroid/media/update/ViewGroupHelper;)I
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1301(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1401(Landroid/media/update/ViewGroupHelper;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1501(Landroid/media/update/ViewGroupHelper;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1601(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1701(Landroid/media/update/ViewGroupHelper;)Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1801(Landroid/media/update/ViewGroupHelper;Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/update/ViewGroupHelper;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$301(Landroid/media/update/ViewGroupHelper;)V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method static synthetic access$401(Landroid/media/update/ViewGroupHelper;Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$501(Landroid/media/update/ViewGroupHelper;)V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method static synthetic access$601(Landroid/media/update/ViewGroupHelper;)V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$701(Landroid/media/update/ViewGroupHelper;Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onVisibilityAggregated(Z)V

    return-void
.end method

.method static synthetic access$801(Landroid/media/update/ViewGroupHelper;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void
.end method

.method static synthetic access$901(Landroid/media/update/ViewGroupHelper;)I
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->checkLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->dispatchTouchEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->generateDefaultLayoutParams_impl()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->generateLayoutParams_impl(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->generateLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getAccessibilityClassName_impl()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/ViewGroupProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getSuggestedMinimumHeight_impl()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->getSuggestedMinimumWidth_impl()I

    move-result v0

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 6

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/update/ViewGroupProvider;->measureChildWithMargins_impl(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onAttachedToWindow_impl()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onDetachedFromWindow_impl()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->onFinishInflate_impl()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/update/ViewGroupProvider;->onLayout_impl(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/ViewGroupProvider;->onMeasure_impl(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onTouchEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onTrackballEvent_impl(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->onVisibilityAggregated_impl(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0, p1}, Landroid/media/update/ViewGroupProvider;->setEnabled_impl(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    iget-object v0, p0, Landroid/media/update/ViewGroupHelper;->mProvider:Landroid/media/update/ViewGroupProvider;

    invoke-interface {v0}, Landroid/media/update/ViewGroupProvider;->shouldDelayChildPressedState_impl()Z

    move-result v0

    return v0
.end method
