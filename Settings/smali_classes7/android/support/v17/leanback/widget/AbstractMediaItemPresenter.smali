.class public abstract Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;
.super Landroid/support/v17/leanback/widget/RowPresenter;
.source "AbstractMediaItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    }
.end annotation


# static fields
.field public static final PLAY_STATE_INITIAL:I = 0x0

.field public static final PLAY_STATE_PAUSED:I = 0x1

.field public static final PLAY_STATE_PLAYING:I = 0x2

.field static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field private mMediaRowSeparator:Z

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;-><init>(I)V

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "themeId"    # I

    .line 108
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    .line 94
    new-instance v0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 109
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    .line 111
    return-void
.end method

.method static calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I
    .locals 4
    .param p0, "vh"    # Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 537
    const/4 v0, -0x1

    .line 538
    .local v0, "childIndex":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->getMediaPlayState(Ljava/lang/Object;)I

    move-result v1

    .line 539
    .local v1, "newPlayState":I
    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 549
    :pswitch_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    .line 550
    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_0
    move v0, v2

    goto :goto_3

    .line 545
    :pswitch_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    .line 546
    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v0, v2

    .line 547
    goto :goto_3

    .line 541
    :pswitch_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    .line 542
    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_2
    move v0, v2

    .line 543
    nop

    .line 552
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static updateSelector(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;Z)Landroid/animation/ValueAnimator;
    .locals 20
    .param p0, "selectorView"    # Landroid/view/View;
    .param p1, "focusChangedView"    # Landroid/view/View;
    .param p2, "layoutAnimator"    # Landroid/animation/ValueAnimator;
    .param p3, "isDetails"    # Z

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 590
    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 591
    .local v1, "animationDuration":I
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 593
    .local v2, "interpolator":Landroid/view/animation/DecelerateInterpolator;
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 594
    .local v3, "layoutDirection":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 599
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 601
    return-object p2

    .line 604
    :cond_0
    if-eqz p2, :cond_1

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 606
    const/4 v0, 0x0

    .end local p2    # "layoutAnimator":Landroid/animation/ValueAnimator;
    .local v0, "layoutAnimator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 608
    .end local v0    # "layoutAnimator":Landroid/animation/ValueAnimator;
    .restart local p2    # "layoutAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    move-object/from16 v0, p2

    .end local p2    # "layoutAnimator":Landroid/animation/ValueAnimator;
    .restart local v0    # "layoutAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    .line 609
    .local v4, "currentAlpha":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 610
    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 612
    nop

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 614
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/view/ViewGroup;

    .line 615
    .local v14, "rootView":Landroid/view/ViewGroup;
    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 616
    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p1

    invoke-virtual {v14, v15, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 617
    const/4 v7, 0x2

    if-eqz p3, :cond_3

    .line 618
    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 619
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 620
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 622
    :cond_2
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 623
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 626
    :cond_3
    :goto_1
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v13, v8, Landroid/graphics/Rect;->left:I

    .line 627
    .local v13, "targetLeft":I
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 628
    .local v12, "targetWidth":I
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v8, v12

    int-to-float v11, v8

    .line 629
    .local v11, "deltaWidth":F
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v13

    int-to-float v10, v8

    .line 631
    .local v10, "deltaLeft":F
    cmpl-float v8, v10, v5

    if-nez v8, :cond_4

    cmpl-float v8, v11, v5

    if-nez v8, :cond_4

    goto :goto_2

    .line 634
    :cond_4
    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    .line 636
    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 637
    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 638
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    .line 657
    :goto_2
    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto :goto_3

    .line 641
    :cond_5
    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 642
    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 643
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    new-instance v5, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;

    move-object v7, v5

    move-object v8, v6

    move v9, v13

    move/from16 v16, v10

    .end local v10    # "deltaLeft":F
    .local v16, "deltaLeft":F
    move/from16 v17, v11

    move v11, v12

    .end local v11    # "deltaWidth":F
    .local v17, "deltaWidth":F
    move/from16 v18, v12

    move/from16 v12, v17

    .end local v12    # "targetWidth":I
    .local v18, "targetWidth":I
    move/from16 v19, v13

    move-object/from16 v13, p0

    .end local v13    # "targetLeft":I
    .local v19, "targetLeft":I
    invoke-direct/range {v7 .. v13}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 655
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 657
    :goto_3
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 427
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 428
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    if-eqz v1, :cond_0

    .line 429
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 431
    :cond_0
    nop

    .line 432
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_row_media_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 433
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {v2, v1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 434
    .local v2, "vh":Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    iput-object p0, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    .line 435
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_1

    .line 436
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaRowView:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 438
    :cond_1
    return-object v2
.end method

.method public getActionPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method protected getMediaPlayState(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeId()I
    .locals 1

    .line 130
    iget v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    return v0
.end method

.method public hasMediaRowSeparator()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 530
    invoke-static {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I

    move-result v0

    .line 531
    .local v0, "childIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 532
    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 534
    :cond_0
    return-void
.end method

.method protected onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 471
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V

    .line 472
    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 453
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 455
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 457
    .local v0, "mvh":Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    .line 459
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getMediaItemRowSeparator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->hasMediaRowSeparator()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 462
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    .line 463
    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {p0, v1, p2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method protected onUnbindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 518
    return-void
.end method

.method public onUnbindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    .line 560
    return-void
.end method

.method public setActionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0
    .param p1, "actionPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 138
    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 139
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    .line 482
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    .line 483
    return-void
.end method

.method public setHasMediaRowSeparator(Z)V
    .locals 0
    .param p1, "hasSeparator"    # Z

    .line 490
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    .line 491
    return-void
.end method

.method public setThemeId(I)V
    .locals 0
    .param p1, "themeId"    # I

    .line 119
    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    .line 120
    return-void
.end method
