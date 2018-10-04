.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mImagePushIn:I

.field private mMainColumn:Landroid/view/View;

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    return-void
.end method

.method private resetHeaderIndention()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x10203b7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    const v0, 0x10202fc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    const v0, 0x102033d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    const v0, 0x102033e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()V

    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x0

    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    move-result v8

    if-le v5, v8, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    if-ge v5, v8, :cond_3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v2, v8, v5

    iput v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    :cond_3
    :goto_1
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v8, :cond_4

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v2, v8, :cond_5

    :cond_4
    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_5
    iget-object v2, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v9, v5, v7

    iget v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v9, v10, :cond_6

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v10, v0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_6
    add-int v10, v5, v7

    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v2, v11

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v11

    if-eq v11, v10, :cond_7

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    :cond_7
    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v11

    iget v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    if-eq v11, v12, :cond_8

    iget-object v11, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v12, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingStart()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    iget v14, v0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    iget-object v15, v0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v4, 0x1

    :cond_8
    if-eqz v4, :cond_9

    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_9
    return-void
.end method
