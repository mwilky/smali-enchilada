.class public Lcom/android/systemui/fingerprint/QLRootView;
.super Landroid/widget/FrameLayout;
.source "QLRootView.java"


# instance fields
.field private TRACK_BAR_MAX_X:I

.field private TRACK_BAR_MIN_X:I

.field private TRACK_INTERVAL:I

.field private mHint:Landroid/widget/TextView;

.field private mIsCancel:Z

.field private mLabel:Landroid/widget/TextView;

.field private mQLCancelView:Landroid/view/View;

.field private mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

.field private mQLTrackBar:Landroid/view/View;

.field private mQLTrackView:Landroid/view/View;

.field private mScrollProgress:F

.field private mScrollStartX:I

.field private mScrollerExpand:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    .line 34
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    .line 35
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollProgress:F

    .line 38
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollStartX:I

    .line 39
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mScrollerExpand:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 50
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private onEnterCancelView()V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    .line 135
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onEnterCancelView()V

    .line 140
    return-void
.end method

.method private onLeaveCancelView()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    .line 145
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onLeaveCancelView()V

    .line 150
    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRootView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 154
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7f4

    const v4, 0x100050a

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 164
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 165
    const-string v1, "QuickLaunch"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 167
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 168
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 55
    const v0, 0x7f0a019e

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 56
    const v0, 0x7f0a00a7

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    .line 57
    const v0, 0x7f0a041e

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    .line 58
    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    .line 59
    const v0, 0x7f0a01e4

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a018e

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mHint:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRootView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLabelView(Landroid/widget/TextView;)V

    .line 63
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRootView;->setSystemUiVisibility(I)V

    .line 66
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 79
    .local v0, "velocity":F
    const/high16 v1, 0x43480000    # 200.0f

    .line 80
    .local v1, "a":F
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    div-float v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setScrollSpeed(F)V

    .line 81
    goto :goto_1

    .line 84
    .end local v0    # "velocity":F
    .end local v1    # "a":F
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    nop

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 92
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 93
    .local v1, "paddingLeft":I
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    .line 94
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getItemCount()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    sub-float/2addr v2, v3

    .line 98
    .local v2, "x":F
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 99
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MIN_X:I

    int-to-float v2, v3

    goto :goto_2

    .line 100
    :cond_2
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 101
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_BAR_MAX_X:I

    int-to-float v2, v3

    .line 104
    :cond_3
    :goto_2
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRootView;->TRACK_INTERVAL:I

    int-to-float v3, v3

    div-float v3, v2, v3

    .line 106
    .local v3, "progress":F
    const/4 v5, 0x0

    .line 108
    .local v5, "isCancel":Z
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLCancelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->onEnterCancelView()V

    goto :goto_3

    .line 114
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRootView;->onLeaveCancelView()V

    .line 118
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 119
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLTrackBar:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setX(F)V

    .line 122
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    if-eqz v6, :cond_8

    .line 123
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setIsCancel(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_7

    .line 125
    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->onScrollProress(F)V

    goto :goto_4

    .line 126
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mIsCancel:Z

    if-nez v4, :cond_8

    .line 127
    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRootView;->mQLRecyclerView:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-virtual {v4}, Lcom/android/systemui/fingerprint/QLRecyclerView;->launch()V

    .line 130
    :cond_8
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
