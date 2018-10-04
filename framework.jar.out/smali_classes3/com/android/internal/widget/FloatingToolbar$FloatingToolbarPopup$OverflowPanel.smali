.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.super Landroid/widget/ListView;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanel"
.end annotation


# instance fields
.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2500(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setScrollBarDefaultDelayBeforeFade(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setScrollIndicators(I)V

    return-void
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$2600(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
