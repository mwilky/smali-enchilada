.class public Lcom/android/systemui/fingerprint/QLRootView;
.super Landroid/widget/FrameLayout;
.source "QLRootView.java"


# instance fields
.field private TRACK_BAR_MAX_X:I

.field private TRACK_BAR_MIN_X:I

.field private mLabel:Landroid/widget/TextView;

.field private mQLCancelView:Landroid/view/View;

.field private mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

.field private mQLTrackBar:Landroid/view/View;

.field private mQLTrackView:Landroid/view/View;

.field private mScrollProgress:F

.field private mScrollStartX:I

.field private mScrollerExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    .line 32
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollProgress:F

    .line 35
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollerExpand:Z

    .line 44
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 112
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f4

    const v4, 0x100050a

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    const-string v1, "QuickPayment"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070492

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 126
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070493

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 127
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 128
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 49
    const v0, 0x7f0a019d

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 50
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    .line 51
    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    .line 52
    const v0, 0x7f0a041c

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    .line 53
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLabelView(Landroid/widget/TextView;)V

    .line 55
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 60
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 61
    .local v2, "paddingLeft":I
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v2

    sub-float/2addr v3, v4

    .line 65
    .local v3, "x":F
    iget v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 66
    iget v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    int-to-float v3, v4

    goto :goto_0

    .line 67
    :cond_0
    iget v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 68
    iget v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    int-to-float v3, v4

    .line 71
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 74
    .local v4, "progress":F
    iget v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    if-nez v6, :cond_2

    const/16 v6, 0x32

    iget v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    div-int/2addr v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    .line 75
    :cond_2
    iget v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    iget v8, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 78
    .end local v4    # "progress":F
    .local v6, "progress":F
    const/4 v4, 0x0

    cmpg-float v4, v6, v4

    if-gez v4, :cond_3

    .line 79
    float-to-int v4, v3

    iput v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    .line 80
    const/4 v6, 0x0

    .line 83
    :cond_3
    const/4 v4, 0x0

    .line 85
    .local v4, "isCancel":Z
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 87
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    const v7, 0x66ffffff

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    const/4 v4, 0x1

    .line 89
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 91
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 97
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    .line 100
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    if-eqz v1, :cond_8

    .line 101
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setIsCancel(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 103
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onScrollProress(F)V

    goto :goto_2

    .line 104
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    if-nez v4, :cond_8

    .line 105
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->launch()V

    .line 108
    :cond_8
    :goto_2
    return-void
.end method
