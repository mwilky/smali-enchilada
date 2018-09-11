.class public Landroid/support/v17/leanback/widget/ThumbsBar;
.super Landroid/widget/LinearLayout;
.source "ThumbsBar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mHeroThumbHeightInPixel:I

.field mHeroThumbWidthInPixel:I

.field private mIsUserSets:Z

.field mMeasuredMarginInPixel:I

.field mNumOfThumbs:I

.field mThumbHeightInPixel:I

.field mThumbWidthInPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_hero_thumbs_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_transport_thumbs_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 71
    return-void
.end method

.method private calculateNumOfThumbs(I)I
    .locals 3
    .param p1, "widthInPixel"    # I

    .line 204
    iget v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->roundUp(II)I

    move-result v0

    .line 206
    .local v0, "nonHeroThumbNum":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 209
    const/4 v0, 0x2

    goto :goto_0

    .line 210
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 216
    :cond_1
    :goto_0
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private static roundUp(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "divisor"    # I

    .line 181
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method private setNumberOfThumbsInternal()V
    .locals 5

    .line 156
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-le v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v0, v1, :cond_1

    .line 160
    invoke-virtual {p0, p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iget v3, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    .line 166
    .local v0, "heroIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 167
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-ne v0, v1, :cond_2

    .line 170
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 171
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3

    .line 173
    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 174
    iget v4, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 176
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    .end local v1    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public clearThumbBitmaps()V
    .locals 2

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 281
    return-void
.end method

.method protected createThumbView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 270
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHeroIndex()I
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getThumbBitmap(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "index"    # I

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 237
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 238
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    .line 239
    .local v0, "heroIndex":I
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "heroView":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 241
    .local v2, "heroLeft":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 242
    .local v3, "heroRight":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v4

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 242
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 246
    .local v4, "heroCenter":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 247
    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    sub-int/2addr v2, v6

    .line 248
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 249
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v2, v7

    .line 250
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    .line 252
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    .line 249
    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/view/View;->layout(IIII)V

    .line 253
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v2, v7

    .line 246
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 255
    .end local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v0, 0x1

    .restart local v5    # "i":I
    :goto_1
    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-ge v5, v6, :cond_1

    .line 256
    iget v6, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    add-int/2addr v3, v6

    .line 257
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 258
    .restart local v6    # "child":Landroid/view/View;
    nop

    .line 259
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    .line 260
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    .line 261
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    .line 258
    invoke-virtual {v6, v3, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 262
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v3, v7

    .line 255
    .end local v6    # "child":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 264
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 221
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 222
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getMeasuredWidth()I

    move-result v0

    .line 225
    .local v0, "width":I
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    if-nez v1, :cond_0

    .line 226
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->calculateNumOfThumbs(I)I

    move-result v1

    .line 228
    .local v1, "numOfThumbs":I
    iget v2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    if-eq v2, v1, :cond_0

    .line 229
    iput v1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 230
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    .line 233
    .end local v1    # "numOfThumbs":I
    :cond_0
    return-void
.end method

.method public setHeroThumbSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 111
    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbHeightInPixel:I

    .line 112
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mHeroThumbWidthInPixel:I

    .line 113
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    .line 114
    .local v0, "heroIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 115
    if-ne v0, v1, :cond_2

    .line 116
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 119
    .local v4, "changed":Z
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, p2, :cond_0

    .line 120
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 121
    const/4 v4, 0x1

    .line 123
    :cond_0
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v5, p1, :cond_1

    .line 124
    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 125
    const/4 v4, 0x1

    .line 127
    :cond_1
    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "changed":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setNumberOfThumbs(I)V
    .locals 1
    .param p1, "numOfThumbs"    # I

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mIsUserSets:Z

    .line 147
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mNumOfThumbs:I

    .line 148
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->setNumberOfThumbsInternal()V

    .line 149
    return-void
.end method

.method public setThumbBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    return-void
.end method

.method public setThumbSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 84
    iput p2, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbHeightInPixel:I

    .line 85
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mThumbWidthInPixel:I

    .line 86
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getHeroIndex()I

    move-result v0

    .line 87
    .local v0, "heroIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 88
    if-eq v0, v1, :cond_2

    .line 89
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 92
    .local v4, "changed":Z
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v5, p2, :cond_0

    .line 93
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 94
    const/4 v4, 0x1

    .line 96
    :cond_0
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v5, p1, :cond_1

    .line 97
    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    const/4 v4, 0x1

    .line 100
    :cond_1
    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "changed":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public setThumbSpace(I)V
    .locals 0
    .param p1, "spaceInPixel"    # I

    .line 138
    iput p1, p0, Landroid/support/v17/leanback/widget/ThumbsBar;->mMeasuredMarginInPixel:I

    .line 139
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ThumbsBar;->requestLayout()V

    .line 140
    return-void
.end method
