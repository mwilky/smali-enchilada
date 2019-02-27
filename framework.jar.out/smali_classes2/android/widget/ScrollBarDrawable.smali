.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mBoundsChanged:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mExtent:I

.field private mHasSetAlpha:Z

.field private mHasSetColorFilter:Z

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 6

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p5, :cond_3

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    add-int/2addr v4, p4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v6, p0

    iget-boolean v7, v6, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    iget v8, v6, Landroid/widget/ScrollBarDrawable;->mExtent:I

    iget v9, v6, Landroid/widget/ScrollBarDrawable;->mRange:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    if-lez v8, :cond_1

    if-gt v9, v8, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v0

    move v11, v1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    goto :goto_2

    :cond_2
    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    :goto_2
    move v0, v2

    const/4 v1, 0x0

    goto :goto_0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v0, v12, Landroid/graphics/Rect;->left:I

    int-to-float v14, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    int-to-float v15, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sget-object v18, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v13, p1

    move/from16 v16, v0

    move/from16 v17, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    if-eqz v10, :cond_4

    move-object/from16 v13, p1

    invoke-direct {v6, v13, v12, v7}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    goto :goto_4

    :cond_4
    move-object/from16 v13, p1

    :goto_4
    if-eqz v11, :cond_7

    if-eqz v7, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_5
    move v14, v0

    if-eqz v7, :cond_6

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_6

    :cond_6
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_6
    move v15, v0

    nop

    invoke-static {v14, v15, v8, v9}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbLength(IIII)I

    move-result v5

    iget v0, v6, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-static {v14, v5, v8, v9, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    move-result v16

    move-object v0, v6

    move-object v1, v13

    move-object v2, v12

    move/from16 v3, v16

    move v4, v5

    move/from16 v17, v5

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    :cond_7
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return v0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    :cond_4
    :goto_1
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public mutate()Landroid/widget/ScrollBarDrawable;
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    :cond_4
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    const/4 v1, 0x1

    if-eq v0, p4, :cond_0

    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    :cond_1
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    :cond_2
    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_0

    const-string v1, " V"

    goto :goto_0

    :cond_0
    const-string v1, " H"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
