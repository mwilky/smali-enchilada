.class final Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;
.super Landroid/support/v4/app/SharedElementCallback;
.source "DetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DetailsTransitionHelper"


# instance fields
.field mActivityToRunTransition:Landroid/app/Activity;

.field mRightPanelHeight:I

.field mRightPanelWidth:I

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSavedScaleType:Landroid/widget/ImageView$ScaleType;

.field mSharedElementName:Ljava/lang/String;

.field mStartedPostpone:Z

.field mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/SharedElementCallback;-><init>()V

    .line 42
    return-void
.end method

.method private changeImageViewScale(Landroid/view/View;)V
    .locals 4
    .param p1, "snapshotView"    # Landroid/view/View;

    .line 98
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .local v0, "snapshotImageView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 103
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 107
    :cond_0
    invoke-static {v1}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    .line 108
    return-void
.end method

.method private hasImageViewScaleChange(Landroid/view/View;)Z
    .locals 1
    .param p1, "snapshotView"    # Landroid/view/View;

    .line 73
    instance-of v0, p1, Landroid/widget/ImageView;

    return v0
.end method

.method private restoreImageViewScale()V
    .locals 3

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 116
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 117
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 122
    invoke-static {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    .line 124
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private saveImageViewScale()V
    .locals 3

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 80
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 81
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    .line 86
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private static updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 94
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 93
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 95
    return-void
.end method


# virtual methods
.method onBindToDrawable(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    .line 227
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$1;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$2;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 173
    .local v1, "overviewView":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq v2, v1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->restoreImageViewScale()V

    .line 178
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setDescendantFocusability(I)V

    .line 179
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setDescendantFocusability(I)V

    .line 183
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestFocus()Z

    .line 184
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 185
    return-void

    .line 174
    :cond_2
    :goto_0
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 136
    .local v1, "overviewView":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 140
    .local v2, "snapshot":Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->hasImageViewScaleChange(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->saveImageViewScale()V

    .line 142
    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->changeImageViewScale(Landroid/view/View;)V

    .line 144
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 145
    .local v3, "imageView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 146
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 147
    .local v5, "height":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 148
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 147
    invoke-virtual {v3, v7, v8}, Landroid/view/View;->measure(II)V

    .line 149
    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 150
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    .line 151
    .local v0, "rightPanel":Landroid/view/View;
    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    if-eqz v7, :cond_3

    .line 152
    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    .line 153
    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 152
    invoke-virtual {v0, v7, v6}, Landroid/view/View;->measure(II)V

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    add-int/2addr v7, v4

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    add-int/2addr v8, v9

    .line 154
    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v0, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 159
    :goto_0
    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroid/support/v17/leanback/widget/HorizontalGridView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setVisibility(I)V

    .line 160
    iget-object v6, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v6, v6, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 161
    return-void

    .line 137
    .end local v0    # "rightPanel":Landroid/view/View;
    .end local v2    # "snapshot":Landroid/view/View;
    .end local v3    # "imageView":Landroid/view/View;
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_4
    :goto_1
    return-void
.end method

.method setSharedElementEnterTransition(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sharedElementName"    # Ljava/lang/String;
    .param p3, "timeoutMs"    # J

    .line 189
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 190
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 193
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    .line 194
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    return-void

    .line 197
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 200
    :cond_4
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    .line 201
    iput-object p2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mSharedElementName:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0, p0}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 206
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 207
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;-><init>(Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_5
    return-void
.end method

.method startPostponedEnterTransition()V
    .locals 1

    .line 271
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mActivityToRunTransition:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewSharedElementHelper;->mStartedPostpone:Z

    .line 278
    :cond_0
    return-void
.end method
