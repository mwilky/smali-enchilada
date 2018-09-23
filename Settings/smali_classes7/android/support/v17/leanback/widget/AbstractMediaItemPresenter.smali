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

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RowPresenter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    new-instance v0, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/MediaItemActionPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    return-void
.end method

.method static calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->getMediaPlayState(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPlayingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_0
    move v0, v2

    goto :goto_3

    :pswitch_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemPausedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v0, v2

    goto :goto_3

    :pswitch_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    :goto_2
    move v0, v2

    nop

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

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasFocus()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/view/ViewGroup;

    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v7, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p1

    invoke-virtual {v14, v15, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v7, 0x2

    if-eqz p3, :cond_3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    div-int/2addr v10, v7

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    :cond_3
    :goto_1
    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    iget v13, v8, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v8, v12

    int-to-float v11, v8

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v8, v13

    int-to-float v10, v8

    cmpl-float v8, v10, v5

    if-nez v8, :cond_4

    cmpl-float v8, v11, v5

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    cmpl-float v5, v4, v5

    if-nez v5, :cond_5

    iput v12, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :goto_2
    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto :goto_3

    :cond_5
    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;

    move-object v7, v5

    move-object v8, v6

    move v9, v13

    move/from16 v16, v10

    move/from16 v17, v11

    move v11, v12

    move/from16 v18, v12

    move/from16 v12, v17

    move/from16 v19, v13

    move-object/from16 v13, p0

    invoke-direct/range {v7 .. v13}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$1;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IFIFLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

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

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    nop

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_row_media_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-direct {v2, v1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mRowPresenter:Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaRowView:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-object v2
.end method

.method public getActionPresenter()Landroid/support/v17/leanback/widget/Presenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method

.method protected getMediaPlayState(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemeId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    return v0
.end method

.method public hasMediaRowSeparator()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return v0
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->calculateMediaItemNumberFlipperIndex(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->mMediaItemNumberViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

.method protected onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;->onBindRowActions()V

    return-void
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindRowActions(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

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

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;

    invoke-virtual {p0, v1, p2}, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->onBindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method protected onUnbindMediaDetails(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onUnbindMediaPlayState(Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setActionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaItemActionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColorSet:Z

    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mBackgroundColor:I

    return-void
.end method

.method public setHasMediaRowSeparator(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mMediaRowSeparator:Z

    return-void
.end method

.method public setThemeId(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/AbstractMediaItemPresenter;->mThemeId:I

    return-void
.end method
