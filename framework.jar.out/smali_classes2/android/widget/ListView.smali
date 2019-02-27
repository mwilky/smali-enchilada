.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$FillNextGap;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field static final TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFillNextGap:Landroid/widget/ListView$FillNextGap;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeaderDividersEnabled:Z

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 223
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 185
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 186
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 205
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 208
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    .line 209
    iput-object v2, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    .line 213
    new-instance v3, Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-direct {v3, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 233
    sget-object v2, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 236
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 237
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 238
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p1, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 242
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 249
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 250
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 254
    .local v6, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_3

    .line 255
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 260
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 262
    .local v1, "dividerHeight":I
    if-eqz v1, :cond_4

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 267
    .end local v1    # "dividerHeight":I
    :cond_4
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 268
    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 270
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method

.method static synthetic access$300(Landroid/widget/ListView;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->fillGap(ZZ)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3388
    add-int/lit8 v8, p2, -0x1

    .line 3389
    .local v8, "abovePosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3390
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v10, v0, v1

    .line 3391
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3393
    return-object v9
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 3397
    add-int/lit8 v8, p2, 0x1

    .line 3398
    .local v8, "belowPosition":I
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, v8, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v9

    .line 3399
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v10, v0, v1

    .line 3400
    .local v10, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v9

    move v2, v8

    move v3, v10

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3402
    return-object v9
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    .line 286
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 289
    .local v0, "childCount":I
    if-lez v0, :cond_4

    .line 292
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 295
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 297
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 300
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 302
    :cond_0
    if-gez v2, :cond_3

    .line 304
    const/4 v2, 0x0

    goto :goto_0

    .line 308
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 311
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v3, v4, :cond_2

    .line 314
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 317
    :cond_2
    if-lez v2, :cond_3

    .line 318
    const/4 v2, 0x0

    .line 322
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 323
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 326
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_4
    return-void
.end method

.method private amountToScroll(II)I
    .locals 10
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .line 2994
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 2995
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 2997
    .local v1, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2999
    .local v2, "numChildren":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_6

    .line 3000
    add-int/lit8 v5, v2, -0x1

    .line 3001
    .local v5, "indexToMakeVisible":I
    if-eq p2, v3, :cond_0

    .line 3002
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3004
    :cond_0
    :goto_0
    if-gt v2, v5, :cond_1

    .line 3006
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 3007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3009
    :cond_1
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3010
    .local v6, "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3012
    .local v7, "viewToMakeVisible":Landroid/view/View;
    move v8, v0

    .line 3013
    .local v8, "goalBottom":I
    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_2

    .line 3014
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    sub-int/2addr v8, v9

    .line 3017
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v9, v8, :cond_3

    .line 3019
    return v4

    .line 3022
    :cond_3
    if-eq p2, v3, :cond_4

    .line 3023
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_4

    .line 3025
    return v4

    .line 3028
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    .line 3030
    .local v3, "amountToScroll":I
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v2

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    if-ne v4, v9, :cond_5

    .line 3032
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v4, v0

    .line 3033
    .local v4, "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3036
    .end local v4    # "max":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 3038
    .end local v3    # "amountToScroll":I
    .end local v5    # "indexToMakeVisible":I
    .end local v6    # "positionToMakeVisible":I
    .end local v7    # "viewToMakeVisible":Landroid/view/View;
    .end local v8    # "goalBottom":I
    :cond_6
    const/4 v5, 0x0

    .line 3039
    .restart local v5    # "indexToMakeVisible":I
    if-eq p2, v3, :cond_7

    .line 3040
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    .line 3042
    :cond_7
    :goto_1
    if-gez v5, :cond_8

    .line 3044
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v6, v7}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 3045
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3046
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v5, p2, v6

    goto :goto_1

    .line 3048
    :cond_8
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3049
    .restart local v6    # "positionToMakeVisible":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3050
    .restart local v7    # "viewToMakeVisible":Landroid/view/View;
    move v8, v1

    .line 3051
    .local v8, "goalTop":I
    if-lez v6, :cond_9

    .line 3052
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v9

    add-int/2addr v8, v9

    .line 3054
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v9, v8, :cond_a

    .line 3056
    return v4

    .line 3059
    :cond_a
    if-eq p2, v3, :cond_b

    .line 3060
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    if-lt v3, v9, :cond_b

    .line 3062
    return v4

    .line 3065
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v8, v3

    .line 3066
    .restart local v3    # "amountToScroll":I
    iget v9, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v9, :cond_c

    .line 3068
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    .line 3069
    .restart local v4    # "max":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3071
    .end local v4    # "max":I
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 3
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .line 3263
    const/4 v0, 0x0

    .line 3264
    .local v0, "amountToScroll":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3265
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3266
    const/16 v1, 0x21

    if-ne p1, v1, :cond_0

    .line 3267
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_1

    .line 3268
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v2

    .line 3269
    if-lez p3, :cond_1

    .line 3270
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 3274
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3275
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_1

    .line 3276
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3277
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    .line 3278
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3282
    .end local v1    # "listBottom":I
    :cond_1
    :goto_0
    return v0
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .locals 7
    .param p1, "direction"    # I

    .line 3161
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 3163
    .local v0, "selectedView":Landroid/view/View;
    const/16 v1, 0x82

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3164
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3165
    .local v2, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 3166
    .local v2, "newFocus":Landroid/view/View;
    goto/16 :goto_7

    .line 3167
    .end local v2    # "newFocus":Landroid/view/View;
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 3168
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3169
    .local v2, "topFadingEdgeShowing":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3170
    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    add-int/2addr v4, v5

    .line 3172
    .local v4, "listTop":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_3

    .line 3173
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2

    .line 3174
    :cond_3
    move v5, v4

    .line 3175
    .local v5, "ySearchPoint":I
    :goto_2
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3176
    .end local v2    # "topFadingEdgeShowing":Z
    .end local v4    # "listTop":I
    .end local v5    # "ySearchPoint":I
    goto :goto_6

    .line 3177
    :cond_4
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3178
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    .line 3179
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 3180
    if-eqz v2, :cond_6

    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    sub-int/2addr v4, v5

    .line 3182
    .local v4, "listBottom":I
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v4, :cond_7

    .line 3183
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    goto :goto_5

    .line 3184
    :cond_7
    move v5, v4

    .line 3185
    .restart local v5    # "ySearchPoint":I
    :goto_5
    iget-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3187
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v5    # "ySearchPoint":I
    :goto_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v2

    .line 3190
    .local v2, "newFocus":Landroid/view/View;
    :goto_7
    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 3191
    invoke-direct {p0, v2}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v4

    .line 3195
    .local v4, "positionOfNewFocus":I
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v4, v5, :cond_a

    .line 3196
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v5

    .line 3197
    .local v5, "selectablePosition":I
    if-eq v5, v6, :cond_a

    if-ne p1, v1, :cond_8

    if-lt v5, v4, :cond_9

    :cond_8
    const/16 v1, 0x21

    if-ne p1, v1, :cond_a

    if-le v5, v4, :cond_a

    .line 3200
    :cond_9
    return-object v3

    .line 3204
    .end local v5    # "selectablePosition":I
    :cond_a
    invoke-direct {p0, p1, v2, v4}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 3206
    .local v1, "focusScroll":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v5

    .line 3207
    .local v5, "maxScrollAmount":I
    if-ge v1, v5, :cond_b

    .line 3209
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3210
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3211
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3212
    :cond_b
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-ge v6, v5, :cond_c

    .line 3217
    invoke-virtual {v2, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 3218
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 3219
    iget-object v3, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    return-object v3

    .line 3222
    .end local v1    # "focusScroll":I
    .end local v4    # "positionOfNewFocus":I
    .end local v5    # "maxScrollAmount":I
    :cond_c
    return-object v3
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .line 2775
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 2776
    return v1

    .line 2779
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2780
    .local v0, "selectedView":Landroid/view/View;
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2782
    .local v2, "selectedPos":I
    invoke-direct {p0, v0, v2, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v3

    .line 2783
    .local v3, "nextSelectedPosition":I
    invoke-direct {p0, p1, v3}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v4

    .line 2786
    .local v4, "amountToScroll":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 2787
    .local v5, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_0
    if-eqz v5, :cond_2

    .line 2788
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2789
    invoke-virtual {v5}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    .line 2792
    :cond_2
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v1

    .line 2793
    .local v7, "needToRedraw":Z
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_6

    .line 2794
    if-eqz v5, :cond_4

    move v9, v6

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    invoke-direct {p0, v0, p1, v3, v9}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2795
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2796
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2797
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2798
    move v2, v3

    .line 2799
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_5

    if-nez v5, :cond_5

    .line 2802
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v9

    .line 2803
    .local v9, "focused":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 2804
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2807
    .end local v9    # "focused":Landroid/view/View;
    :cond_5
    const/4 v7, 0x1

    .line 2808
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2811
    :cond_6
    if-lez v4, :cond_8

    .line 2812
    const/16 v9, 0x21

    if-ne p1, v9, :cond_7

    move v9, v4

    goto :goto_3

    :cond_7
    neg-int v9, v4

    :goto_3
    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2813
    const/4 v7, 0x1

    .line 2818
    :cond_8
    iget-boolean v9, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v9, :cond_a

    if-nez v5, :cond_a

    if-eqz v0, :cond_a

    .line 2819
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2820
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v9

    .line 2821
    .restart local v9    # "focused":Landroid/view/View;
    if-eqz v9, :cond_a

    .line 2822
    invoke-direct {p0, v9, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v9}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v10

    if-lez v10, :cond_a

    .line 2823
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 2829
    .end local v9    # "focused":Landroid/view/View;
    :cond_a
    if-ne v3, v8, :cond_b

    if-eqz v0, :cond_b

    .line 2830
    invoke-direct {p0, v0, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2831
    const/4 v0, 0x0

    .line 2832
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2836
    iput v8, p0, Landroid/widget/ListView;->mResurrectToPosition:I

    .line 2839
    :cond_b
    if-eqz v7, :cond_e

    .line 2840
    if-eqz v0, :cond_c

    .line 2841
    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2842
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 2844
    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2845
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2847
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2848
    return v6

    .line 2851
    :cond_e
    return v1
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 630
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 631
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 632
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 633
    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iput-boolean v1, v5, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 629
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2434
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/widget/ListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_17

    .line 2438
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2439
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2442
    :cond_1
    const/4 v0, 0x0

    .line 2443
    .local v0, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2444
    .local v2, "action":I
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 2445
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 2446
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2447
    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 2448
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2449
    const/4 v0, 0x1

    .line 2454
    :cond_2
    if-nez v0, :cond_1d

    if-eq v2, v4, :cond_1d

    .line 2455
    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    .line 2525
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2526
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v4

    :goto_1
    move v0, v3

    goto/16 :goto_16

    .line 2519
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2520
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    move v0, v3

    goto/16 :goto_16

    .line 2511
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2512
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v4

    :goto_5
    move v0, v3

    goto/16 :goto_16

    .line 2513
    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2514
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    :goto_7
    move v0, v3

    goto/16 :goto_16

    .line 2503
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2504
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v1

    goto :goto_9

    :cond_d
    :goto_8
    move v3, v4

    :goto_9
    move v0, v3

    goto/16 :goto_16

    .line 2505
    :cond_e
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2506
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move v3, v1

    goto :goto_b

    :cond_10
    :goto_a
    move v3, v4

    :goto_b
    move v0, v3

    goto/16 :goto_16

    .line 2535
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2536
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_c

    :cond_11
    move v3, v1

    goto :goto_d

    :cond_12
    :goto_c
    move v3, v4

    :goto_d
    move v0, v3

    goto/16 :goto_16

    .line 2537
    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2538
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_e

    :cond_14
    move v3, v1

    goto :goto_f

    :cond_15
    :goto_e
    move v3, v4

    :goto_f
    move v0, v3

    goto/16 :goto_16

    .line 2497
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2498
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_16

    .line 2491
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2492
    const/16 v3, 0x11

    invoke-direct {p0, v3}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v0

    goto/16 :goto_16

    .line 2474
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2475
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2476
    if-nez v0, :cond_1d

    .line 2477
    :goto_10
    add-int/lit8 v3, p2, -0x1

    .local v3, "count":I
    if-lez p2, :cond_19

    .line 2478
    .end local p2    # "count":I
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 2479
    const/4 v0, 0x1

    .line 2477
    move p2, v3

    goto :goto_10

    .line 2485
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_16
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2486
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_11

    :cond_17
    move v3, v1

    goto :goto_12

    :cond_18
    :goto_11
    move v3, v4

    :goto_12
    move v0, v3

    goto :goto_16

    .line 2457
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2458
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v0

    .line 2459
    if-nez v0, :cond_1d

    .line 2460
    :goto_13
    add-int/lit8 v3, p2, -0x1

    .restart local v3    # "count":I
    if-lez p2, :cond_19

    .line 2461
    .end local p2    # "count":I
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 2462
    const/4 v0, 0x1

    .line 2460
    move p2, v3

    goto :goto_13

    .line 2544
    :cond_19
    move p2, v3

    goto :goto_16

    .line 2468
    .end local v3    # "count":I
    .restart local p2    # "count":I
    :cond_1a
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2469
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_14

    :cond_1b
    move v3, v1

    goto :goto_15

    :cond_1c
    :goto_14
    move v3, v4

    :goto_15
    move v0, v3

    .line 2544
    :cond_1d
    :goto_16
    if-eqz v0, :cond_1e

    .line 2545
    return v4

    .line 2548
    :cond_1e
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2549
    return v4

    .line 2552
    :cond_1f
    packed-switch v2, :pswitch_data_0

    .line 2563
    return v1

    .line 2560
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2557
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2554
    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 2435
    .end local v0    # "handled":Z
    .end local v2    # "action":I
    :cond_20
    :goto_17
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .line 1603
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1604
    .local v0, "lastPosition":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1607
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1610
    .local v1, "lastChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1613
    .local v2, "lastBottom":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1617
    .local v3, "end":I
    sub-int v4, v3, v2

    .line 1618
    .local v4, "bottomOffset":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1619
    .local v5, "firstChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1623
    .local v6, "firstTop":I
    if-lez v4, :cond_2

    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_2

    .line 1624
    :cond_0
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1626
    iget-object v7, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1629
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1630
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1633
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1635
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1640
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastBottom":I
    .end local v3    # "end":I
    .end local v4    # "bottomOffset":I
    .end local v5    # "firstChild":Landroid/view/View;
    .end local v6    # "firstTop":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .line 1652
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p1, :cond_3

    .line 1655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1661
    .local v1, "firstTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1664
    .local v2, "start":I
    iget v3, p0, Landroid/widget/ListView;->mBottom:I

    iget v4, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1668
    .local v3, "end":I
    sub-int v4, v1, v2

    .line 1669
    .local v4, "topOffset":I
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1670
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1671
    .local v6, "lastBottom":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    .line 1675
    .local v7, "lastPosition":I
    if-lez v4, :cond_3

    .line 1676
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-le v6, v3, :cond_0

    goto :goto_0

    .line 1690
    :cond_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_3

    .line 1691
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    goto :goto_1

    .line 1677
    .restart local v0    # "firstChild":Landroid/view/View;
    .restart local v1    # "firstTop":I
    .restart local v2    # "start":I
    .restart local v3    # "end":I
    .restart local v4    # "topOffset":I
    .restart local v5    # "lastChild":Landroid/view/View;
    .restart local v6    # "lastBottom":I
    .restart local v7    # "lastPosition":I
    :cond_1
    :goto_0
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_2

    .line 1679
    sub-int v8, v6, v3

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1682
    :cond_2
    neg-int v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1683
    iget v8, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_3

    .line 1686
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1688
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1695
    .end local v0    # "firstChild":Landroid/view/View;
    .end local v1    # "firstTop":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "topOffset":I
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "lastBottom":I
    .end local v7    # "lastPosition":I
    :cond_3
    :goto_1
    return-void
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .line 3293
    const/4 v0, 0x0

    .line 3294
    .local v0, "distance":I
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3295
    iget-object v1, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3296
    iget v1, p0, Landroid/widget/ListView;->mBottom:I

    iget v2, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 3297
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_0

    .line 3298
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 3299
    :cond_0
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_1

    .line 3300
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    .line 3302
    :cond_1
    :goto_0
    return v0
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 968
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 969
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 970
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 971
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 972
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 974
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 975
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 976
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 978
    :goto_0
    return-void
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .line 833
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;->fillDown(IIZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillDown(IIZ)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I
    .param p3, "isPreObtain"    # Z

    .line 837
    const/4 v0, 0x0

    .line 839
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 840
    .local v1, "correction":I
    iget v2, p0, Landroid/widget/ListView;->mBottom:I

    iget v3, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v2, v3

    .line 841
    .local v2, "end":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 842
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 845
    :cond_0
    if-eqz p3, :cond_1

    .line 846
    iget v1, p0, Landroid/widget/ListView;->mOldIncrementalDeltaY:I

    .line 848
    :cond_1
    :goto_0
    sub-int v3, p2, v1

    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-ge p1, v3, :cond_4

    .line 850
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    .line 851
    .local v9, "selected":Z
    const/4 v6, 0x1

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 853
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v4, v5

    .line 854
    if-eqz v9, :cond_3

    .line 855
    move-object v0, v3

    .line 857
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 858
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "selected":Z
    goto :goto_0

    .line 860
    :cond_4
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 861
    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 8
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .line 936
    sub-int v0, p2, p1

    .line 938
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v7

    .line 940
    .local v7, "position":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 942
    .local v1, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 944
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 945
    .local v2, "selHeight":I
    if-gt v2, v0, :cond_0

    .line 946
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 949
    :cond_0
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 951
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 952
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_0

    .line 954
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 957
    :goto_0
    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 10
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .line 992
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 993
    .local v0, "fadingEdgeLength":I
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 997
    .local v7, "selectedPosition":I
    invoke-direct {p0, p2, v0, v7}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v8

    .line 999
    .local v8, "topSelectionPixel":I
    invoke-direct {p0, p3, v0, v7}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v9

    .line 1002
    .local v9, "bottomSelectionPixel":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v7

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1006
    .local v1, "sel":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_0

    .line 1009
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v8

    .line 1013
    .local v2, "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v9

    .line 1014
    .local v3, "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1017
    .local v4, "offset":I
    neg-int v5, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1018
    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v8, :cond_1

    .line 1021
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    .line 1025
    .restart local v2    # "spaceAbove":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v9, v3

    .line 1026
    .restart local v3    # "spaceBelow":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1029
    .restart local v4    # "offset":I
    invoke-virtual {v1, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1033
    .end local v2    # "spaceAbove":I
    .end local v3    # "spaceBelow":I
    .end local v4    # "offset":I
    :cond_1
    :goto_0
    invoke-direct {p0, v1, v7}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1035
    iget-boolean v2, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v2, :cond_2

    .line 1036
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    goto :goto_1

    .line 1038
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1041
    :goto_1
    return-object v1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .param p1, "nextTop"    # I

    .line 916
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 917
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 918
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 919
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 921
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillGap(ZZ)V
    .locals 4
    .param p1, "down"    # Z
    .param p2, "isPreObtain"    # Z

    .line 750
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 751
    .local v0, "count":I
    const/16 v1, 0x22

    if-eqz p1, :cond_2

    .line 752
    const/4 v2, 0x0

    .line 753
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 756
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v3

    goto :goto_0

    .line 757
    :cond_1
    move v1, v2

    .line 758
    .local v1, "startOffset":I
    :goto_0
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1, p2}, Landroid/widget/ListView;->fillDown(IIZ)Landroid/view/View;

    .line 759
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 760
    .end local v1    # "startOffset":I
    .end local v2    # "paddingTop":I
    goto :goto_2

    .line 761
    :cond_2
    const/4 v2, 0x0

    .line 762
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_3

    .line 763
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 765
    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 766
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    .line 767
    .restart local v1    # "startOffset":I
    :goto_1
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v1, p2}, Landroid/widget/ListView;->fillUp(IIZ)Landroid/view/View;

    .line 768
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 770
    .end local v1    # "startOffset":I
    .end local v2    # "paddingBottom":I
    :goto_2
    return-void
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "top"    # I

    .line 1555
    iget v0, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1556
    .local v0, "tempIsSelected":Z
    :goto_0
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v1

    .line 1558
    .local v1, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 1563
    iget v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1564
    .local v2, "dividerHeight":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 1565
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1567
    .local v3, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1568
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1569
    .local v4, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1570
    .local v5, "childCount":I
    if-lez v5, :cond_1

    .line 1571
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1573
    .end local v5    # "childCount":I
    :cond_1
    goto :goto_1

    .line 1574
    .end local v3    # "above":Landroid/view/View;
    .end local v4    # "below":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v4

    .line 1576
    .restart local v4    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1577
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {p0, v3, v5}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v3

    .line 1578
    .restart local v3    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 1579
    .restart local v5    # "childCount":I
    if-lez v5, :cond_3

    .line 1580
    invoke-direct {p0, v5}, Landroid/widget/ListView;->correctTooLow(I)V

    .line 1584
    .end local v5    # "childCount":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1585
    return-object v1

    .line 1586
    :cond_4
    if-eqz v3, :cond_5

    .line 1587
    return-object v3

    .line 1589
    :cond_5
    return-object v4
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;->fillUp(IIZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillUp(IIZ)Landroid/view/View;
    .locals 10
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I
    .param p3, "isPreObtain"    # Z

    .line 879
    const/4 v0, 0x0

    .line 881
    .local v0, "selectedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 882
    .local v1, "correction":I
    const/4 v2, 0x0

    .line 883
    .local v2, "end":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 884
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 887
    :cond_0
    if-eqz p3, :cond_1

    .line 888
    iget v1, p0, Landroid/widget/ListView;->mOldIncrementalDeltaY:I

    .line 890
    :cond_1
    :goto_0
    add-int v3, p2, v1

    const/4 v4, 0x1

    if-le v3, v2, :cond_4

    if-ltz p1, :cond_4

    .line 892
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v9, v4

    .line 893
    .local v9, "selected":Z
    const/4 v6, 0x0

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v3

    .line 895
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v4, v5

    .line 896
    if-eqz v9, :cond_3

    .line 897
    move-object v0, v3

    .line 899
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 900
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "selected":Z
    goto :goto_0

    .line 902
    :cond_4
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 903
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/widget/ListView;->setVisibleRangeHint(II)V

    .line 904
    return-object v0
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .line 2978
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .locals 2
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1054
    move v0, p1

    .line 1055
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1056
    sub-int/2addr v0, p2

    .line 1058
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .line 1071
    move v0, p1

    .line 1072
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 1073
    add-int/2addr v0, p2

    .line 1075
    :cond_0
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2664
    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2665
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2669
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 2670
    .local v0, "numChildren":I
    iget-boolean v1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 2671
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 2672
    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    .line 2675
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2676
    .local v2, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2678
    .local v3, "nextFocus":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 2680
    iget-object v4, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2681
    .local v4, "focusedRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_2

    .line 2682
    invoke-virtual {v2, v4}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2683
    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2684
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2686
    :cond_2
    const/4 v4, 0x0

    .line 2688
    :goto_1
    invoke-virtual {v3, p1, v4}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2689
    const/4 v5, 0x1

    return v5

    .line 2696
    .end local v4    # "focusedRect":Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2697
    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2696
    invoke-virtual {v4, v5, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2698
    .local v4, "globalNextFocus":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 2699
    invoke-direct {p0, v4, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 2703
    .end local v1    # "selectedView":Landroid/view/View;
    .end local v2    # "currentFocus":Landroid/view/View;
    .end local v3    # "nextFocus":Landroid/view/View;
    .end local v4    # "globalNextFocus":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .line 2869
    const/4 v0, -0x1

    if-eq p3, v0, :cond_5

    .line 2880
    const/4 v0, 0x0

    .line 2881
    .local v0, "topSelected":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 2882
    .local v1, "selectedIndex":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v2, p3, v2

    .line 2883
    .local v2, "nextSelectedIndex":I
    const/16 v3, 0x21

    if-ne p2, v3, :cond_0

    .line 2884
    move v3, v2

    .line 2885
    .local v3, "topViewIndex":I
    move v4, v1

    .line 2886
    .local v4, "bottomViewIndex":I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2887
    .local v5, "topView":Landroid/view/View;
    move-object v6, p1

    .line 2888
    .local v6, "bottomView":Landroid/view/View;
    const/4 v0, 0x1

    goto :goto_0

    .line 2890
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    :cond_0
    move v3, v1

    .line 2891
    .restart local v3    # "topViewIndex":I
    move v4, v2

    .line 2892
    .restart local v4    # "bottomViewIndex":I
    move-object v5, p1

    .line 2893
    .restart local v5    # "topView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2896
    .restart local v6    # "bottomView":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2899
    .local v7, "numChildren":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_2

    .line 2900
    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setSelected(Z)V

    .line 2901
    invoke-direct {p0, v5, v3, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2905
    :cond_2
    if-eqz v6, :cond_4

    .line 2906
    if-nez p4, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v9, v8

    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2907
    invoke-direct {p0, v6, v4, v7}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2909
    :cond_4
    return-void

    .line 2870
    .end local v0    # "topSelected":Z
    .end local v1    # "selectedIndex":I
    .end local v2    # "nextSelectedIndex":I
    .end local v3    # "topViewIndex":I
    .end local v4    # "bottomViewIndex":I
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "bottomView":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .line 2078
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2079
    .local v0, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2080
    .local v1, "numHeaders":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 2081
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 2082
    return v4

    .line 2080
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2086
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 2087
    .local v3, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2088
    .local v5, "numFooters":I
    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 2089
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView$FixedViewInfo;

    iget-object v7, v7, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v7, :cond_2

    .line 2090
    return v4

    .line 2088
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2094
    .end local v6    # "i":I
    :cond_3
    return v2
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .line 3245
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 3246
    return v0

    .line 3249
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3250
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 7
    .param p1, "direction"    # I

    .line 3108
    iget v0, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3109
    .local v0, "firstPosition":I
    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 3110
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v2, v1, :cond_0

    .line 3111
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3112
    :cond_0
    move v2, v0

    .line 3113
    .local v2, "startPos":I
    :goto_0
    iget-object v3, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 3114
    return v1

    .line 3116
    :cond_1
    if-ge v2, v0, :cond_2

    .line 3117
    move v2, v0

    .line 3120
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 3121
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3122
    .local v4, "adapter":Landroid/widget/ListAdapter;
    move v5, v2

    .local v5, "pos":I
    :goto_1
    if-gt v5, v3, :cond_4

    .line 3123
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    sub-int v6, v5, v0

    .line 3124
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 3125
    return v5

    .line 3122
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3128
    .end local v2    # "startPos":I
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_4
    goto :goto_4

    .line 3129
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 3130
    .local v2, "last":I
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eq v3, v1, :cond_6

    .line 3131
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3132
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 3133
    .local v3, "startPos":I
    :goto_2
    if-ltz v3, :cond_b

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_7

    goto :goto_5

    .line 3136
    :cond_7
    if-le v3, v2, :cond_8

    .line 3137
    move v3, v2

    .line 3140
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 3141
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    move v5, v3

    .restart local v5    # "pos":I
    :goto_3
    if-lt v5, v0, :cond_a

    .line 3142
    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_9

    sub-int v6, v5, v0

    .line 3143
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 3144
    return v5

    .line 3141
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 3148
    .end local v2    # "last":I
    .end local v3    # "startPos":I
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "pos":I
    :cond_a
    :goto_4
    return v1

    .line 3134
    .restart local v2    # "last":I
    .restart local v3    # "startPos":I
    :cond_b
    :goto_5
    return v1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .line 2113
    iget-boolean v0, p0, Landroid/widget/ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2115
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v0

    .line 2116
    .local v0, "activeView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2119
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2120
    return-object v0

    .line 2126
    .end local v0    # "activeView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v0

    .line 2129
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v8, v1, v2

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2131
    return-object v0
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .line 2919
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2920
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2921
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2923
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2926
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2927
    .local v1, "heightDelta":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 2928
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2931
    .end local v1    # "heightDelta":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .line 2939
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2940
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 2941
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 2946
    :cond_0
    iget v1, p0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2948
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2950
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 2951
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_0

    .line 2953
    .end local v3    # "childHeightSpec":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 2956
    .restart local v3    # "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 2957
    return-void
.end method

.method private measureScrapChild(Landroid/view/View;III)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightHint"    # I

    .line 1398
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1399
    .local v0, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 1401
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1403
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1404
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 1405
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1407
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1409
    .local v1, "childWidthSpec":I
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 1411
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 1412
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, "childHeightSpec":I
    goto :goto_0

    .line 1414
    .end local v3    # "childHeightSpec":I
    :cond_1
    const/4 v3, 0x0

    invoke-static {p4, v3}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 1416
    .restart local v3    # "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1420
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 1421
    return-void
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 14
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    move-object v6, p0

    move/from16 v7, p4

    .line 1117
    invoke-virtual {v6}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 1118
    .local v8, "fadingEdgeLength":I
    iget v9, v6, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1122
    .local v9, "selectedPosition":I
    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v10

    .line 1124
    .local v10, "topSelectionPixel":I
    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v11

    .line 1127
    .local v11, "bottomSelectionPixel":I
    if-lez p3, :cond_2

    .line 1149
    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v12

    .line 1152
    .end local p1    # "oldSel":Landroid/view/View;
    .local v12, "oldSel":Landroid/view/View;
    iget v13, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 1155
    .local v13, "dividerHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v2, v0, v13

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, v6

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1159
    .local v0, "sel":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v11, :cond_0

    .line 1162
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v10

    .line 1165
    .local v1, "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v11

    .line 1168
    .local v2, "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1169
    .local v3, "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1170
    .local v4, "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1173
    neg-int v5, v4

    invoke-virtual {v12, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1175
    neg-int v5, v4

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1179
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_0
    iget-boolean v1, v6, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1180
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {v6, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1181
    invoke-direct {v6}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1182
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {v6, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    goto :goto_0

    .line 1184
    :cond_1
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v13

    invoke-direct {v6, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1185
    invoke-direct {v6}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1186
    iget v1, v6, Landroid/widget/ListView;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-direct {v6, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1188
    .end local v13    # "dividerHeight":I
    :goto_0
    nop

    .line 1263
    move-object v1, v12

    goto/16 :goto_3

    .line 1188
    .end local v0    # "sel":Landroid/view/View;
    .end local v12    # "oldSel":Landroid/view/View;
    .restart local p1    # "oldSel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1209
    if-eqz p2, :cond_3

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, v6

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1216
    .end local v0    # "sel":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, v6

    move v1, v9

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1221
    .restart local v0    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v10, :cond_4

    .line 1223
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v10, v1

    .line 1226
    .restart local v1    # "spaceAbove":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v2, v11, v2

    .line 1229
    .restart local v2    # "spaceBelow":I
    sub-int v3, p5, v7

    div-int/lit8 v3, v3, 0x2

    .line 1230
    .restart local v3    # "halfVerticalSpace":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1231
    .restart local v4    # "offset":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1234
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1238
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    .end local v3    # "halfVerticalSpace":I
    .end local v4    # "offset":I
    :cond_4
    invoke-direct {v6, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_2

    .line 1241
    .end local v0    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v13

    .line 1246
    .local v13, "oldTop":I
    const/4 v3, 0x1

    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x1

    move-object v0, v6

    move v1, v9

    move v2, v13

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1249
    .restart local v0    # "sel":Landroid/view/View;
    if-ge v13, v7, :cond_6

    .line 1252
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1253
    .local v1, "newBottom":I
    add-int/lit8 v2, v7, 0x14

    if-ge v1, v2, :cond_6

    .line 1255
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v7, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1260
    .end local v1    # "newBottom":I
    :cond_6
    invoke-direct {v6, v0, v9}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 1263
    .end local v13    # "oldTop":I
    .end local p1    # "oldSel":Landroid/view/View;
    .local v1, "oldSel":Landroid/view/View;
    :goto_2
    move-object v1, p1

    :goto_3
    return-object v0
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .line 2740
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p3, v0, :cond_2

    .line 2741
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 2742
    .local v3, "listBottom":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v4, v3, :cond_1

    .line 2743
    if-eq p2, v2, :cond_0

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lt p2, v4, :cond_0

    .line 2744
    add-int/lit8 v4, p2, 0x1

    goto :goto_0

    .line 2745
    :cond_0
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 2747
    .end local v3    # "listBottom":I
    .local v4, "nextSelected":I
    :goto_0
    nop

    .line 2749
    goto :goto_2

    .line 2747
    .end local v4    # "nextSelected":I
    .restart local v3    # "listBottom":I
    :cond_1
    return v2

    .line 2750
    .end local v3    # "listBottom":I
    :cond_2
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 2751
    .local v3, "listTop":I
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v4, v3, :cond_7

    .line 2752
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    .line 2753
    .local v4, "lastPos":I
    if-eq p2, v2, :cond_3

    if-gt p2, v4, :cond_3

    .line 2754
    add-int/lit8 v5, p2, -0x1

    goto :goto_1

    .line 2755
    :cond_3
    move v5, v4

    .end local v4    # "lastPos":I
    :goto_1
    move v4, v5

    .line 2756
    .local v4, "nextSelected":I
    nop

    .line 2757
    .end local v3    # "listTop":I
    :goto_2
    move v3, v4

    .line 2761
    .end local v4    # "nextSelected":I
    .local v3, "nextSelected":I
    if-ltz v3, :cond_6

    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto :goto_4

    .line 2764
    :cond_4
    if-ne p3, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v3, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    return v0

    .line 2762
    :cond_6
    :goto_4
    return v2

    .line 2757
    .local v3, "listTop":I
    :cond_7
    return v2
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 4
    .param p1, "newFocus"    # Landroid/view/View;

    .line 3230
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3231
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .line 3231
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3232
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3233
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, p1, v2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3234
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3231
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3237
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 2965
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2966
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2967
    .local v1, "h":I
    iget-object v2, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2968
    .local v2, "childLeft":I
    add-int v3, v2, v0

    .line 2969
    .local v3, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2970
    .local v4, "childTop":I
    add-int v5, v4, v1

    .line 2971
    .local v5, "childBottom":I
    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 2972
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 418
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 419
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 420
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    .line 421
    .local v2, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 422
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 423
    goto :goto_1

    .line 419
    .end local v2    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private removeUnusedFixedViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 2058
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ListView$FixedViewInfo;>;"
    if-nez p1, :cond_0

    .line 2059
    return-void

    .line 2061
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2062
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 2063
    .local v1, "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    iget-object v2, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 2064
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 2065
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v4, :cond_1

    .line 2066
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->removeDetachedView(Landroid/view/View;Z)V

    .line 2067
    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 2061
    .end local v1    # "fixedViewInfo":Landroid/widget/ListView$FixedViewInfo;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2071
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private scrollListItemsBy(I)V
    .locals 9
    .param p1, "amount"    # I

    .line 3313
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3315
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 3316
    .local v0, "listBottom":I
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3317
    .local v1, "listTop":I
    iget-object v2, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3319
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    const/4 v3, 0x0

    if-gez p1, :cond_4

    .line 3323
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 3324
    .local v4, "numChildren":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3325
    .local v5, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v0, :cond_0

    .line 3326
    iget v6, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    .line 3327
    .local v6, "lastVisiblePosition":I
    iget v7, p0, Landroid/widget/ListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 3328
    invoke-direct {p0, v5, v6}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 3329
    add-int/lit8 v4, v4, 0x1

    .line 3333
    .end local v6    # "lastVisiblePosition":I
    goto :goto_0

    .line 3338
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v0, :cond_1

    .line 3339
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3343
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3344
    .local v6, "first":Landroid/view/View;
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge v7, v1, :cond_3

    .line 3345
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/AbsListView$LayoutParams;

    .line 3346
    .local v7, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v8, v7, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v8}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3347
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {v2, v6, v8}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3349
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3350
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3351
    iget v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3352
    .end local v7    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_1

    .line 3353
    .end local v4    # "numChildren":I
    .end local v5    # "last":Landroid/view/View;
    .end local v6    # "first":Landroid/view/View;
    :cond_3
    goto :goto_4

    .line 3355
    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3358
    .local v3, "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v1, :cond_5

    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    if-lez v4, :cond_5

    .line 3359
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 3360
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    goto :goto_2

    .line 3365
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-le v4, v1, :cond_6

    .line 3366
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 3369
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 3370
    .local v4, "lastIndex":I
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3373
    .restart local v5    # "last":Landroid/view/View;
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-le v6, v0, :cond_8

    .line 3374
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 3375
    .local v6, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v7, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v2, v7}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3376
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v7, v4

    invoke-virtual {v2, v5, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3378
    :cond_7
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3379
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3380
    .end local v6    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_3

    .line 3382
    .end local v3    # "first":Landroid/view/View;
    .end local v4    # "lastIndex":I
    .end local v5    # "last":Landroid/view/View;
    :cond_8
    :goto_4
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 3383
    iget-object v3, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3384
    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 3385
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "isAttachedToWindow"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p5

    .line 2152
    const-string/jumbo v5, "setupListItem"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2154
    const/4 v8, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v8

    .line 2155
    .local v9, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v10

    if-eq v9, v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v8

    .line 2156
    .local v10, "updateChildSelected":Z
    :goto_1
    iget v11, v0, Landroid/widget/ListView;->mTouchMode:I

    .line 2157
    .local v11, "mode":I
    if-lez v11, :cond_2

    const/4 v12, 0x3

    if-ge v11, v12, :cond_2

    iget v12, v0, Landroid/widget/ListView;->mMotionPosition:I

    if-ne v12, v2, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    move v12, v8

    .line 2159
    .local v12, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v13

    if-eq v12, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    move v13, v8

    .line 2160
    .local v13, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_5

    if-nez v10, :cond_5

    .line 2161
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    move v14, v8

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v14, 0x1

    .line 2165
    .local v14, "needToMeasure":Z
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2166
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_6

    .line 2167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 2169
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .local v6, "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_6
    move-object v6, v15

    iget-object v7, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    iput v7, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 2170
    iget-object v7, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    iput-boolean v7, v6, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 2175
    if-eqz v10, :cond_7

    .line 2176
    invoke-virtual {v1, v9}, Landroid/view/View;->setSelected(Z)V

    .line 2179
    :cond_7
    if-eqz v13, :cond_8

    .line 2180
    invoke-virtual {v1, v12}, Landroid/view/View;->setPressed(Z)V

    .line 2183
    :cond_8
    iget v7, v0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v7, :cond_a

    iget-object v7, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v7, :cond_a

    .line 2184
    instance-of v7, v1, Landroid/widget/Checkable;

    if-eqz v7, :cond_9

    .line 2185
    move-object v7, v1

    check-cast v7, Landroid/widget/Checkable;

    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v7, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    .line 2186
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v5, v7, :cond_a

    .line 2188
    iget-object v5, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 2192
    :cond_a
    :goto_6
    if-eqz p7, :cond_b

    iget-boolean v7, v6, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v7, :cond_c

    :cond_b
    iget-boolean v7, v6, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    const/4 v5, -0x2

    if-eqz v7, :cond_e

    iget v7, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v7, v5, :cond_e

    .line 2194
    :cond_c
    if-eqz p4, :cond_d

    const/4 v5, -0x1

    goto :goto_7

    :cond_d
    move v5, v8

    :goto_7
    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2198
    if-eqz p7, :cond_11

    .line 2199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v5, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v5, v2, :cond_11

    .line 2201
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_a

    .line 2204
    :cond_e
    iput-boolean v8, v6, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 2205
    iget v7, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v7, v5, :cond_f

    .line 2206
    const/4 v5, 0x1

    iput-boolean v5, v6, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    goto :goto_8

    .line 2208
    :cond_f
    const/4 v5, 0x1

    :goto_8
    if-eqz p4, :cond_10

    const/4 v7, -0x1

    goto :goto_9

    :cond_10
    move v7, v8

    :goto_9
    invoke-virtual {v0, v1, v7, v6, v5}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 2210
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->resolveRtlPropertiesIfNeeded()Z

    .line 2213
    :cond_11
    :goto_a
    if-eqz v14, :cond_13

    .line 2214
    iget v5, v0, Landroid/widget/ListView;->mWidthMeasureSpec:I

    iget-object v7, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v5, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2216
    .local v5, "childWidthSpec":I
    iget v7, v6, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 2218
    .local v7, "lpHeight":I
    if-lez v7, :cond_12

    .line 2219
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2219
    .local v8, "childHeightSpec":I
    goto :goto_b

    .line 2221
    .end local v8    # "childHeightSpec":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v8

    const/4 v2, 0x0

    invoke-static {v8, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 2221
    .restart local v8    # "childHeightSpec":I
    :goto_b
    move v2, v8

    .line 2224
    .end local v8    # "childHeightSpec":I
    .local v2, "childHeightSpec":I
    invoke-virtual {v1, v5, v2}, Landroid/view/View;->measure(II)V

    .line 2225
    .end local v2    # "childHeightSpec":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "lpHeight":I
    goto :goto_c

    .line 2226
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    .line 2229
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 2230
    .local v2, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 2231
    .local v5, "h":I
    if-eqz p4, :cond_14

    move/from16 v8, p3

    goto :goto_d

    :cond_14
    sub-int v8, p3, v5

    .line 2233
    .local v8, "childTop":I
    :goto_d
    if-eqz v14, :cond_15

    .line 2234
    add-int v3, v4, v2

    .line 2235
    .local v3, "childRight":I
    move/from16 v17, v2

    add-int v2, v8, v5

    .line 2236
    .local v2, "childBottom":I
    .local v17, "w":I
    invoke-virtual {v1, v4, v8, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 2237
    .end local v2    # "childBottom":I
    .end local v3    # "childRight":I
    goto :goto_e

    .line 2238
    .end local v17    # "w":I
    .local v2, "w":I
    :cond_15
    move/from16 v17, v2

    .line 2238
    .end local v2    # "w":I
    .restart local v17    # "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2239
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v8, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2242
    :goto_e
    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    if-eqz v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2243
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2246
    :cond_16
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2247
    return-void
.end method

.method private shouldAdjustHeightForDivider(I)Z
    .locals 21
    .param p1, "itemIndex"    # I

    move-object/from16 v0, p0

    .line 4087
    move/from16 v1, p1

    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 4088
    .local v2, "dividerHeight":I
    iget-object v3, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 4089
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 4090
    .local v4, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 4091
    .local v7, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 4092
    .local v8, "drawOverscrollFooter":Z
    :goto_1
    if-lez v2, :cond_2

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    .line 4094
    .local v9, "drawDividers":Z
    :goto_2
    if-eqz v9, :cond_15

    .line 4095
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 4096
    .local v10, "fillForMissingDividers":Z
    :goto_3
    iget v11, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4097
    .local v11, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 4098
    .local v12, "headerCount":I
    iget-object v13, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int v13, v11, v13

    .line 4099
    .local v13, "footerLimit":I
    if-ge v1, v12, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 4100
    .local v14, "isHeader":Z
    :goto_4
    if-lt v1, v13, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    .line 4101
    .local v15, "isFooter":Z
    :goto_5
    iget-boolean v5, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 4102
    .local v5, "headerDividers":Z
    iget-boolean v6, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 4103
    .local v6, "footerDividers":Z
    if-nez v5, :cond_7

    if-nez v14, :cond_6

    goto :goto_6

    .line 4142
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    :cond_6
    move/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_a

    .line 4103
    .restart local v5    # "headerDividers":Z
    .restart local v6    # "footerDividers":Z
    .restart local v10    # "fillForMissingDividers":Z
    .restart local v11    # "itemCount":I
    .restart local v12    # "headerCount":I
    .restart local v13    # "footerLimit":I
    .restart local v14    # "isHeader":Z
    .restart local v15    # "isFooter":Z
    :cond_7
    :goto_6
    if-nez v6, :cond_8

    if-nez v15, :cond_6

    .line 4104
    :cond_8
    move/from16 v17, v2

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4105
    .local v2, "adapter":Landroid/widget/ListAdapter;
    .local v17, "dividerHeight":I
    move-object/from16 v18, v3

    iget-boolean v3, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v18, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_f

    .line 4106
    add-int/lit8 v3, v11, -0x1

    if-ne v1, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    .line 4107
    .local v3, "isLastItem":Z
    :goto_7
    if-eqz v8, :cond_a

    if-nez v3, :cond_e

    .line 4108
    :cond_a
    add-int/lit8 v0, v1, 0x1

    .line 4112
    .local v0, "nextIndex":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_d

    if-nez v5, :cond_b

    if-nez v14, :cond_d

    if-lt v0, v12, :cond_d

    :cond_b
    if-nez v3, :cond_c

    .line 4114
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_d

    if-nez v6, :cond_c

    if-nez v15, :cond_d

    if-ge v0, v13, :cond_d

    .line 4116
    :cond_c
    const/16 v16, 0x1

    return v16

    .line 4117
    :cond_d
    const/16 v16, 0x1

    if-eqz v10, :cond_e

    .line 4118
    return v16

    .line 4121
    .end local v0    # "nextIndex":I
    .end local v3    # "isLastItem":Z
    :cond_e
    goto :goto_a

    .line 4122
    :cond_f
    if-eqz v7, :cond_10

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    .line 4123
    .local v0, "start":I
    :goto_8
    if-ne v1, v0, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    .line 4124
    .local v3, "isFirstItem":Z
    :goto_9
    if-nez v3, :cond_16

    .line 4125
    move/from16 v20, v0

    add-int/lit8 v0, v1, -0x1

    .line 4129
    .local v0, "previousIndex":I
    .local v20, "start":I
    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_14

    if-nez v5, :cond_12

    if-nez v14, :cond_14

    if-lt v0, v12, :cond_14

    :cond_12
    if-nez v3, :cond_13

    .line 4131
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v19

    if-eqz v19, :cond_14

    if-nez v6, :cond_13

    if-nez v15, :cond_14

    if-ge v0, v13, :cond_14

    .line 4133
    :cond_13
    const/16 v16, 0x1

    return v16

    .line 4134
    :cond_14
    const/16 v16, 0x1

    if-eqz v10, :cond_16

    .line 4135
    return v16

    .line 4142
    .end local v0    # "previousIndex":I
    .end local v5    # "headerDividers":Z
    .end local v6    # "footerDividers":Z
    .end local v10    # "fillForMissingDividers":Z
    .end local v11    # "itemCount":I
    .end local v12    # "headerCount":I
    .end local v13    # "footerLimit":I
    .end local v14    # "isHeader":Z
    .end local v15    # "isFooter":Z
    .end local v17    # "dividerHeight":I
    .end local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v20    # "start":I
    .local v2, "dividerHeight":I
    .local v3, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_15
    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "dividerHeight":I
    .end local v3    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "dividerHeight":I
    .restart local v18    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_16
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .line 651
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 652
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 653
    .local v1, "bottomOfBottomChild":I
    iget v2, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 655
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 657
    .local v4, "listBottom":I
    iget v5, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v5, v3

    if-lt v2, v5, :cond_1

    if-ge v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    :goto_0
    return v3
.end method

.method private showingTopFadingEdge()Z
    .locals 3

    .line 643
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 644
    .local v0, "listTop":I
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 488
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 489
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 446
    const-string v0, "ListView"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const-string v0, "ListView"

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 453
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 454
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 455
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 456
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 460
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 467
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 471
    :cond_2
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 388
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 346
    const-string v0, "ListView"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "ListView"

    const-string v1, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 352
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 353
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 354
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 355
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 359
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    .line 366
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_2

    .line 367
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 370
    :cond_2
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .line 3782
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .line 3759
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .line 2715
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2716
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2717
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2718
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    :cond_0
    nop

    .line 2722
    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    .line 2720
    return v0

    .line 2722
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/widget/ListView;->mInLayout:Z

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .line 2251
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected dispatchDataSetObserverOnChangedInternal()V
    .locals 1

    .line 4225
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 4226
    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 4228
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 46
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 3496
    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroid/widget/ListView;->mCachingStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3497
    iput-boolean v3, v0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3501
    :cond_0
    iget v2, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3502
    .local v2, "dividerHeight":I
    iget-object v4, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3503
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3504
    .local v5, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 3505
    .local v7, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v5, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 3506
    .local v8, "drawOverscrollFooter":Z
    :goto_1
    if-lez v2, :cond_3

    iget-object v9, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 3508
    .local v9, "drawDividers":Z
    :goto_2
    if-nez v9, :cond_5

    if-nez v7, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    .line 3659
    :cond_4
    move-object/from16 v39, v4

    move-object v6, v5

    move/from16 v31, v7

    move/from16 v26, v8

    move/from16 v34, v9

    goto/16 :goto_1c

    .line 3510
    :cond_5
    :goto_3
    iget-object v10, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3511
    .local v10, "bounds":Landroid/graphics/Rect;
    iget v11, v0, Landroid/widget/ListView;->mPaddingLeft:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 3512
    iget v11, v0, Landroid/widget/ListView;->mRight:I

    iget v12, v0, Landroid/widget/ListView;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/ListView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 3514
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    .line 3515
    .local v11, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .line 3516
    .local v12, "headerCount":I
    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 3517
    .local v13, "itemCount":I
    iget-object v14, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int v14, v13, v14

    .line 3518
    .local v14, "footerLimit":I
    iget-boolean v15, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3519
    .local v15, "headerDividers":Z
    iget-boolean v3, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3520
    .local v3, "footerDividers":Z
    iget v6, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3521
    .local v6, "first":I
    move-object/from16 v17, v5

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3522
    .local v5, "areAllItemsSelectable":Z
    .local v17, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    move/from16 v18, v5

    iget-object v5, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3527
    .local v5, "adapter":Landroid/widget/ListAdapter;
    .local v18, "areAllItemsSelectable":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x1

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    .line 3529
    .local v19, "fillForMissingDividers":Z
    :goto_4
    if-eqz v19, :cond_8

    move/from16 v20, v13

    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .end local v13    # "itemCount":I
    .local v20, "itemCount":I
    if-nez v13, :cond_7

    iget-boolean v13, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v13, :cond_7

    .line 3530
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    iput-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3531
    iget-object v13, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .local v21, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 3533
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    :cond_7
    move-object/from16 v21, v5

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_5

    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "itemCount":I
    :cond_8
    move-object/from16 v21, v5

    move/from16 v20, v13

    .end local v5    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "itemCount":I
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    :goto_5
    iget-object v5, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3535
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3536
    .local v13, "effectivePaddingTop":I
    const/16 v22, 0x0

    .line 3537
    .local v22, "effectivePaddingBottom":I
    move/from16 v23, v13

    iget v13, v0, Landroid/widget/ListView;->mGroupFlags:I

    .end local v13    # "effectivePaddingTop":I
    .local v23, "effectivePaddingTop":I
    move-object/from16 v24, v5

    const/16 v5, 0x22

    .end local v5    # "paint":Landroid/graphics/Paint;
    .local v24, "paint":Landroid/graphics/Paint;
    and-int/2addr v13, v5

    if-ne v13, v5, :cond_9

    .line 3538
    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v5, Landroid/graphics/Rect;->top:I

    .line 3539
    .end local v23    # "effectivePaddingTop":I
    .restart local v13    # "effectivePaddingTop":I
    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .end local v22    # "effectivePaddingBottom":I
    .local v5, "effectivePaddingBottom":I
    goto :goto_6

    .line 3542
    .end local v5    # "effectivePaddingBottom":I
    .end local v13    # "effectivePaddingTop":I
    .restart local v22    # "effectivePaddingBottom":I
    .restart local v23    # "effectivePaddingTop":I
    :cond_9
    move/from16 v5, v22

    move/from16 v13, v23

    .end local v22    # "effectivePaddingBottom":I
    .end local v23    # "effectivePaddingTop":I
    .restart local v5    # "effectivePaddingBottom":I
    .restart local v13    # "effectivePaddingTop":I
    :goto_6
    move/from16 v25, v13

    iget v13, v0, Landroid/widget/ListView;->mBottom:I

    .end local v13    # "effectivePaddingTop":I
    .local v25, "effectivePaddingTop":I
    move/from16 v26, v8

    iget v8, v0, Landroid/widget/ListView;->mTop:I

    .end local v8    # "drawOverscrollFooter":Z
    .local v26, "drawOverscrollFooter":Z
    sub-int/2addr v13, v8

    sub-int/2addr v13, v5

    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v13, v8

    .line 3543
    .local v13, "listBottom":I
    iget-boolean v8, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v27, v5

    .end local v5    # "effectivePaddingBottom":I
    .local v27, "effectivePaddingBottom":I
    if-nez v8, :cond_1e

    .line 3544
    const/4 v8, 0x0

    .line 3547
    .local v8, "bottom":I
    iget v5, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3548
    .local v5, "scrollY":I
    if-lez v11, :cond_b

    if-gez v5, :cond_b

    .line 3549
    if-eqz v7, :cond_a

    .line 3550
    move/from16 v28, v8

    const/4 v8, 0x0

    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 3551
    .end local v8    # "bottom":I
    .local v28, "bottom":I
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3552
    invoke-virtual {v0, v1, v4, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 3553
    .end local v28    # "bottom":I
    .restart local v8    # "bottom":I
    :cond_a
    move/from16 v28, v8

    const/4 v8, 0x0

    .end local v8    # "bottom":I
    .restart local v28    # "bottom":I
    if-eqz v9, :cond_c

    .line 3554
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 3555
    neg-int v8, v2

    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 3556
    const/4 v8, -0x1

    invoke-virtual {v0, v1, v10, v8}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_7

    .line 3560
    .end local v28    # "bottom":I
    .restart local v8    # "bottom":I
    :cond_b
    move/from16 v28, v8

    .end local v8    # "bottom":I
    .restart local v28    # "bottom":I
    :cond_c
    :goto_7
    move/from16 v29, v5

    move/from16 v5, v28

    const/4 v8, 0x0

    .end local v28    # "bottom":I
    .local v5, "bottom":I
    .local v8, "i":I
    .local v29, "scrollY":I
    :goto_8
    if-ge v8, v11, :cond_1b

    .line 3561
    move-object/from16 v30, v4

    add-int v4, v6, v8

    .line 3562
    .local v4, "itemIndex":I
    .local v30, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-ge v4, v12, :cond_d

    const/16 v22, 0x1

    goto :goto_9

    :cond_d
    const/16 v22, 0x0

    .line 3563
    .local v22, "isHeader":Z
    :goto_9
    if-lt v4, v14, :cond_e

    const/16 v23, 0x1

    goto :goto_a

    :cond_e
    const/16 v23, 0x0

    .line 3564
    .local v23, "isFooter":Z
    :goto_a
    if-nez v15, :cond_f

    if-nez v22, :cond_10

    :cond_f
    if-nez v3, :cond_12

    if-nez v23, :cond_10

    goto :goto_c

    .line 3560
    .end local v4    # "itemIndex":I
    .end local v22    # "isHeader":Z
    .end local v23    # "isFooter":Z
    :cond_10
    move/from16 v31, v7

    .end local v7    # "drawOverscrollHeader":Z
    .end local v13    # "listBottom":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .local v31, "drawOverscrollHeader":Z
    .local v33, "listBottom":I
    .local v34, "drawDividers":Z
    :cond_11
    move/from16 v34, v9

    move/from16 v33, v13

    move-object/from16 v9, v21

    :goto_b
    move-object/from16 v4, v24

    goto/16 :goto_10

    .line 3565
    .end local v31    # "drawOverscrollHeader":Z
    .end local v33    # "listBottom":I
    .end local v34    # "drawDividers":Z
    .local v4, "itemIndex":I
    .restart local v7    # "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v13    # "listBottom":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v22    # "isHeader":Z
    .restart local v23    # "isFooter":Z
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_12
    :goto_c
    move/from16 v31, v7

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3566
    .local v7, "child":Landroid/view/View;
    .restart local v31    # "drawOverscrollHeader":Z
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3567
    move-object/from16 v32, v7

    add-int/lit8 v7, v11, -0x1

    .end local v7    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    if-ne v8, v7, :cond_13

    const/4 v7, 0x1

    goto :goto_d

    :cond_13
    const/4 v7, 0x0

    .line 3569
    .local v7, "isLastItem":Z
    :goto_d
    if-eqz v9, :cond_1a

    if-ge v5, v13, :cond_1a

    if-eqz v26, :cond_14

    if-nez v7, :cond_11

    .line 3571
    :cond_14
    move/from16 v33, v13

    add-int/lit8 v13, v4, 0x1

    .line 3575
    .local v13, "nextIndex":I
    .restart local v33    # "listBottom":I
    move/from16 v34, v9

    move-object/from16 v9, v21

    invoke-interface {v9, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v34    # "drawDividers":Z
    if-eqz v21, :cond_18

    if-nez v15, :cond_16

    if-nez v22, :cond_15

    if-lt v13, v12, :cond_15

    goto :goto_e

    .line 3582
    :cond_15
    move/from16 v35, v4

    goto :goto_f

    .line 3575
    :cond_16
    :goto_e
    if-nez v7, :cond_17

    .line 3577
    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_15

    if-nez v3, :cond_17

    if-nez v23, :cond_15

    if-ge v13, v14, :cond_15

    .line 3579
    :cond_17
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3580
    move/from16 v35, v4

    add-int v4, v5, v2

    .end local v4    # "itemIndex":I
    .local v35, "itemIndex":I
    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3581
    invoke-virtual {v0, v1, v10, v8}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_b

    .line 3582
    .end local v35    # "itemIndex":I
    .restart local v4    # "itemIndex":I
    :cond_18
    move/from16 v35, v4

    .end local v4    # "itemIndex":I
    .restart local v35    # "itemIndex":I
    :goto_f
    if-eqz v19, :cond_19

    .line 3583
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3584
    add-int v4, v5, v2

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    .line 3585
    move-object/from16 v4, v24

    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .end local v7    # "isLastItem":Z
    .end local v13    # "nextIndex":I
    .end local v22    # "isHeader":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "paint":Landroid/graphics/Paint;
    .end local v32    # "child":Landroid/view/View;
    .end local v35    # "itemIndex":I
    .local v4, "paint":Landroid/graphics/Paint;
    goto :goto_10

    .line 3560
    .end local v4    # "paint":Landroid/graphics/Paint;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_19
    move-object/from16 v4, v24

    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    goto :goto_10

    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v33    # "listBottom":I
    .end local v34    # "drawDividers":Z
    .local v9, "drawDividers":Z
    .local v13, "listBottom":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1a
    move/from16 v34, v9

    move/from16 v33, v13

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v13    # "listBottom":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v33    # "listBottom":I
    .restart local v34    # "drawDividers":Z
    :goto_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v9

    move-object/from16 v4, v30

    move/from16 v7, v31

    move/from16 v13, v33

    move/from16 v9, v34

    goto/16 :goto_8

    .line 3591
    .end local v8    # "i":I
    .end local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v33    # "listBottom":I
    .end local v34    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .restart local v13    # "listBottom":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1b
    move-object/from16 v30, v4

    move/from16 v31, v7

    move/from16 v34, v9

    move/from16 v33, v13

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v7    # "drawOverscrollHeader":Z
    .end local v13    # "listBottom":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .restart local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v33    # "listBottom":I
    .restart local v34    # "drawDividers":Z
    iget v7, v0, Landroid/widget/ListView;->mBottom:I

    iget v8, v0, Landroid/widget/ListView;->mScrollY:I

    add-int/2addr v7, v8

    .line 3592
    .local v7, "overFooterBottom":I
    if-eqz v26, :cond_1d

    add-int v8, v6, v11

    move/from16 v13, v20

    if-ne v8, v13, :cond_1c

    .end local v20    # "itemCount":I
    .local v13, "itemCount":I
    if-le v7, v5, :cond_1c

    .line 3594
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3595
    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 3596
    move-object/from16 v8, v17

    invoke-virtual {v0, v1, v8, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .end local v5    # "bottom":I
    .end local v7    # "overFooterBottom":I
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v29    # "scrollY":I
    .local v8, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_11

    .line 3598
    .end local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_1c
    move-object/from16 v8, v17

    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_11

    .end local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "itemCount":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    :cond_1d
    move-object/from16 v8, v17

    move/from16 v13, v20

    .line 3659
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .restart local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "itemCount":I
    :goto_11
    move-object v6, v8

    move-object/from16 v39, v30

    goto/16 :goto_1c

    .line 3601
    .end local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v31    # "drawOverscrollHeader":Z
    .end local v33    # "listBottom":I
    .end local v34    # "drawDividers":Z
    .local v4, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v7, "drawOverscrollHeader":Z
    .local v9, "drawDividers":Z
    .local v13, "listBottom":I
    .restart local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "itemCount":I
    .restart local v21    # "adapter":Landroid/widget/ListAdapter;
    .restart local v24    # "paint":Landroid/graphics/Paint;
    :cond_1e
    move-object/from16 v30, v4

    move/from16 v31, v7

    move/from16 v34, v9

    move/from16 v33, v13

    move-object/from16 v8, v17

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v4, v24

    .end local v7    # "drawOverscrollHeader":Z
    .end local v17    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v20    # "itemCount":I
    .end local v21    # "adapter":Landroid/widget/ListAdapter;
    .end local v24    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    .restart local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v9, "adapter":Landroid/widget/ListAdapter;
    .local v13, "itemCount":I
    .restart local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v31    # "drawOverscrollHeader":Z
    .restart local v33    # "listBottom":I
    .restart local v34    # "drawDividers":Z
    iget v5, v0, Landroid/widget/ListView;->mScrollY:I

    .line 3603
    .local v5, "scrollY":I
    if-lez v11, :cond_1f

    if-eqz v31, :cond_1f

    .line 3604
    iput v5, v10, Landroid/graphics/Rect;->top:I

    .line 3605
    move/from16 v36, v13

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "itemCount":I
    .local v36, "itemCount":I
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, v10, Landroid/graphics/Rect;->bottom:I

    .line 3606
    move-object/from16 v13, v30

    invoke-virtual {v0, v1, v13, v10}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .end local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v13, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    goto :goto_12

    .line 3609
    .end local v36    # "itemCount":I
    .local v13, "itemCount":I
    .restart local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    :cond_1f
    move/from16 v36, v13

    move-object/from16 v13, v30

    const/4 v7, 0x0

    .end local v30    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .local v13, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v36    # "itemCount":I
    :goto_12
    if-eqz v31, :cond_20

    const/16 v16, 0x1

    goto :goto_13

    :cond_20
    move/from16 v16, v7

    :goto_13
    move/from16 v37, v16

    .line 3610
    .local v37, "start":I
    nop

    .local v16, "i":I
    :goto_14
    move/from16 v38, v16

    .end local v16    # "i":I
    .local v38, "i":I
    move/from16 v7, v38

    if-ge v7, v11, :cond_2e

    .line 3611
    .end local v38    # "i":I
    .local v7, "i":I
    move-object/from16 v39, v13

    add-int v13, v6, v7

    .line 3612
    .local v13, "itemIndex":I
    .local v39, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    if-ge v13, v12, :cond_21

    const/16 v16, 0x1

    goto :goto_15

    :cond_21
    const/16 v16, 0x0

    .line 3613
    .local v16, "isHeader":Z
    :goto_15
    if-lt v13, v14, :cond_22

    const/16 v17, 0x1

    goto :goto_16

    :cond_22
    const/16 v17, 0x0

    .line 3614
    .local v17, "isFooter":Z
    :goto_16
    if-nez v15, :cond_24

    if-nez v16, :cond_23

    goto :goto_17

    .line 3610
    .end local v13    # "itemIndex":I
    .end local v16    # "isHeader":Z
    .end local v17    # "isFooter":Z
    :cond_23
    move/from16 v45, v3

    move/from16 v40, v6

    move-object/from16 v41, v8

    move/from16 v43, v25

    move/from16 v44, v37

    goto/16 :goto_1b

    .line 3614
    .restart local v13    # "itemIndex":I
    .restart local v16    # "isHeader":Z
    .restart local v17    # "isFooter":Z
    :cond_24
    :goto_17
    if-nez v3, :cond_25

    if-nez v17, :cond_23

    .line 3615
    :cond_25
    move/from16 v40, v6

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3616
    .local v6, "child":Landroid/view/View;
    .local v40, "first":I
    move-object/from16 v41, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 3617
    .local v8, "top":I
    .local v41, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_2c

    move-object/from16 v42, v6

    move/from16 v6, v25

    if-le v8, v6, :cond_2b

    .line 3618
    .end local v25    # "effectivePaddingTop":I
    .local v6, "effectivePaddingTop":I
    .local v42, "child":Landroid/view/View;
    move/from16 v43, v6

    move/from16 v6, v37

    if-ne v7, v6, :cond_26

    .end local v37    # "start":I
    .local v6, "start":I
    .local v43, "effectivePaddingTop":I
    const/16 v20, 0x1

    goto :goto_18

    :cond_26
    const/16 v20, 0x0

    .line 3619
    .local v20, "isFirstItem":Z
    :goto_18
    move/from16 v44, v6

    add-int/lit8 v6, v13, -0x1

    .line 3623
    .local v6, "previousIndex":I
    .local v44, "start":I
    invoke-interface {v9, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_2a

    if-nez v15, :cond_28

    if-nez v16, :cond_27

    if-lt v6, v12, :cond_27

    goto :goto_19

    .line 3634
    :cond_27
    move/from16 v45, v3

    goto :goto_1a

    .line 3623
    :cond_28
    :goto_19
    if-nez v20, :cond_29

    .line 3625
    invoke-interface {v9, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_27

    if-nez v3, :cond_29

    if-nez v17, :cond_27

    if-ge v6, v14, :cond_27

    .line 3627
    :cond_29
    move/from16 v45, v3

    sub-int v3, v8, v2

    .end local v3    # "footerDividers":Z
    .local v45, "footerDividers":Z
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3628
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 3633
    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1b

    .line 3634
    .end local v45    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    :cond_2a
    move/from16 v45, v3

    .end local v3    # "footerDividers":Z
    .restart local v45    # "footerDividers":Z
    :goto_1a
    if-eqz v19, :cond_2d

    .line 3635
    sub-int v3, v8, v2

    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3636
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 3637
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .end local v6    # "previousIndex":I
    .end local v8    # "top":I
    .end local v13    # "itemIndex":I
    .end local v16    # "isHeader":Z
    .end local v17    # "isFooter":Z
    .end local v20    # "isFirstItem":Z
    .end local v42    # "child":Landroid/view/View;
    goto :goto_1b

    .line 3610
    .end local v43    # "effectivePaddingTop":I
    .end local v44    # "start":I
    .end local v45    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v6, "effectivePaddingTop":I
    .restart local v37    # "start":I
    :cond_2b
    move/from16 v45, v3

    move/from16 v43, v6

    move/from16 v44, v37

    .end local v3    # "footerDividers":Z
    .end local v6    # "effectivePaddingTop":I
    .end local v37    # "start":I
    .restart local v43    # "effectivePaddingTop":I
    .restart local v44    # "start":I
    .restart local v45    # "footerDividers":Z
    goto :goto_1b

    .end local v43    # "effectivePaddingTop":I
    .end local v44    # "start":I
    .end local v45    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .restart local v25    # "effectivePaddingTop":I
    .restart local v37    # "start":I
    :cond_2c
    move/from16 v45, v3

    move/from16 v43, v25

    move/from16 v44, v37

    .end local v3    # "footerDividers":Z
    .end local v25    # "effectivePaddingTop":I
    .end local v37    # "start":I
    .restart local v43    # "effectivePaddingTop":I
    .restart local v44    # "start":I
    .restart local v45    # "footerDividers":Z
    :cond_2d
    :goto_1b
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .local v16, "i":I
    move-object/from16 v13, v39

    move/from16 v6, v40

    move-object/from16 v8, v41

    move/from16 v25, v43

    move/from16 v37, v44

    move/from16 v3, v45

    const/4 v7, 0x0

    goto/16 :goto_14

    .line 3643
    .end local v16    # "i":I
    .end local v39    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v40    # "first":I
    .end local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v43    # "effectivePaddingTop":I
    .end local v44    # "start":I
    .end local v45    # "footerDividers":Z
    .restart local v3    # "footerDividers":Z
    .local v6, "first":I
    .local v8, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v13, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "effectivePaddingTop":I
    .restart local v37    # "start":I
    :cond_2e
    move/from16 v45, v3

    move/from16 v40, v6

    move-object/from16 v41, v8

    move-object/from16 v39, v13

    move/from16 v43, v25

    move/from16 v44, v37

    .end local v3    # "footerDividers":Z
    .end local v6    # "first":I
    .end local v8    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .end local v13    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .end local v25    # "effectivePaddingTop":I
    .end local v37    # "start":I
    .restart local v39    # "overscrollHeader":Landroid/graphics/drawable/Drawable;
    .restart local v40    # "first":I
    .restart local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v43    # "effectivePaddingTop":I
    .restart local v44    # "start":I
    .restart local v45    # "footerDividers":Z
    if-lez v11, :cond_30

    if-lez v5, :cond_30

    .line 3644
    if-eqz v26, :cond_2f

    .line 3645
    iget v3, v0, Landroid/widget/ListView;->mBottom:I

    .line 3646
    .local v3, "absListBottom":I
    iput v3, v10, Landroid/graphics/Rect;->top:I

    .line 3647
    add-int v6, v3, v5

    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 3648
    move-object/from16 v6, v41

    invoke-virtual {v0, v1, v6, v10}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3649
    .end local v3    # "absListBottom":I
    .end local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .local v6, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    goto :goto_1c

    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_2f
    move-object/from16 v6, v41

    .end local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v34, :cond_31

    .line 3650
    move/from16 v13, v33

    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 3651
    .end local v33    # "listBottom":I
    .local v13, "listBottom":I
    add-int v3, v13, v2

    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 3652
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v10, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "scrollY":I
    .end local v9    # "adapter":Landroid/widget/ListAdapter;
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "count":I
    .end local v12    # "headerCount":I
    .end local v13    # "listBottom":I
    .end local v14    # "footerLimit":I
    .end local v15    # "headerDividers":Z
    .end local v18    # "areAllItemsSelectable":Z
    .end local v19    # "fillForMissingDividers":Z
    .end local v27    # "effectivePaddingBottom":I
    .end local v36    # "itemCount":I
    .end local v40    # "first":I
    .end local v43    # "effectivePaddingTop":I
    .end local v44    # "start":I
    .end local v45    # "footerDividers":Z
    goto :goto_1c

    .line 3659
    .end local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_30
    move-object/from16 v6, v41

    .end local v41    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "overscrollFooter":Landroid/graphics/drawable/Drawable;
    :cond_31
    :goto_1c
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3660
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2405
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2406
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 2408
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2409
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2412
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2415
    .end local v1    # "focused":Landroid/view/View;
    :cond_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 3664
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3665
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_0

    .line 3666
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/ListView;->mCachingActive:Z

    .line 3668
    :cond_0
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 3682
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3684
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3685
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3686
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3478
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3480
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3481
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3483
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3484
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3485
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3488
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3489
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3492
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 3461
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3463
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3464
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3466
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 3467
    .local v1, "span":I
    if-ge v1, v0, :cond_0

    .line 3468
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3471
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3472
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3475
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 4205
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 4207
    const-string/jumbo v0, "recycleOnMeasure"

    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 4208
    return-void
.end method

.method fillGap(Z)V
    .locals 1
    .param p1, "down"    # Z

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->fillGap(ZZ)V

    .line 747
    return-void
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .line 1522
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1523
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1524
    iget-boolean v1, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    .line 1525
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1526
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1527
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1528
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1525
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1532
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1533
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1534
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1535
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 1532
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1540
    .end local v1    # "i":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method findNextGap(Z)V
    .locals 6
    .param p1, "down"    # Z

    .line 774
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 775
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 776
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    .line 778
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    if-nez v1, :cond_1

    .line 779
    new-instance v1, Landroid/widget/ListView$FillNextGap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListView$FillNextGap;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    .line 781
    :cond_1
    const/16 v1, 0x22

    if-eqz p1, :cond_6

    .line 782
    const/4 v2, 0x0

    .line 783
    .local v2, "paddingTop":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_2

    .line 784
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    .line 786
    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v3, v4

    goto :goto_0

    .line 787
    :cond_3
    move v3, v2

    .line 789
    .local v3, "nextTop":I
    :goto_0
    iget v4, p0, Landroid/widget/ListView;->mBottom:I

    iget v5, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v4, v5

    .line 790
    .local v4, "end":I
    iget v5, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_4

    .line 791
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    .line 794
    :cond_4
    iget v1, p0, Landroid/widget/ListView;->mOldIncrementalDeltaY:I

    sub-int v1, v3, v1

    if-ge v1, v4, :cond_5

    .line 795
    iget-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 796
    iget-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    iput-boolean p1, v1, Landroid/widget/ListView$FillNextGap;->down:Z

    .line 797
    iget-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    .end local v2    # "paddingTop":I
    .end local v3    # "nextTop":I
    .end local v4    # "end":I
    :cond_5
    goto :goto_2

    .line 802
    :cond_6
    const/4 v2, 0x0

    .line 803
    .local v2, "paddingBottom":I
    iget v3, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_7

    .line 804
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v2

    .line 806
    :cond_7
    if-lez v0, :cond_8

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v3, v4

    goto :goto_1

    .line 807
    :cond_8
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 808
    .local v3, "nextBottom":I
    :goto_1
    const/4 v4, 0x0

    .line 809
    .restart local v4    # "end":I
    iget v5, p0, Landroid/widget/ListView;->mGroupFlags:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_9

    .line 810
    iget-object v1, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 812
    :cond_9
    iget v1, p0, Landroid/widget/ListView;->mOldIncrementalDeltaY:I

    add-int/2addr v1, v3

    if-le v1, v4, :cond_a

    .line 813
    iget-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 814
    iget-object v1, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    iput-boolean p1, v1, Landroid/widget/ListView$FillNextGap;->down:Z

    .line 815
    iget-object v1, p0, Landroid/widget/ListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/widget/ListView;->mFillNextGap:Landroid/widget/ListView$FillNextGap;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 819
    .end local v2    # "paddingBottom":I
    .end local v3    # "nextBottom":I
    .end local v4    # "end":I
    :cond_a
    :goto_2
    return-void
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 4013
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 4014
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4017
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4018
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 4020
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4021
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 4023
    if-eqz v2, :cond_0

    .line 4024
    return-object v2

    .line 4017
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4029
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 3992
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3993
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3994
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3995
    if-eqz v0, :cond_0

    .line 3996
    return-object v0

    .line 3999
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4000
    if-eqz v0, :cond_1

    .line 4001
    return-object v0

    .line 4004
    :cond_1
    return-object v0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3918
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3919
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3922
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3923
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3925
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3926
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3928
    if-eqz v2, :cond_0

    .line 3929
    return-object v2

    .line 3922
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3934
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 3902
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3903
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3904
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3905
    if-eqz v0, :cond_0

    .line 3906
    return-object v0

    .line 3908
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3909
    if-eqz v0, :cond_1

    .line 3910
    return-object v0

    .line 3913
    :cond_1
    return-object v0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 3963
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3964
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3967
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3968
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v2, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3970
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3971
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3973
    if-eqz v2, :cond_0

    .line 3974
    return-object v2

    .line 3967
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3979
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 3945
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3946
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3947
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3948
    if-eqz v0, :cond_0

    .line 3949
    return-object v0

    .line 3952
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3953
    if-eqz v0, :cond_1

    .line 3954
    return-object v0

    .line 3957
    :cond_1
    return-object v0
.end method

.method fullScroll(I)Z
    .locals 4
    .param p1, "direction"    # I

    .line 2623
    const/4 v0, 0x0

    .line 2624
    .local v0, "moved":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-ne p1, v3, :cond_1

    .line 2625
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-eqz v3, :cond_3

    .line 2626
    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2627
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 2628
    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2629
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2630
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2632
    :cond_0
    const/4 v0, 0x1

    .line 2633
    .end local v1    # "position":I
    goto :goto_0

    .line 2634
    :cond_1
    const/16 v3, 0x82

    if-ne p1, v3, :cond_3

    .line 2635
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v3, v2

    .line 2636
    .local v3, "lastItem":I
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-ge v2, v3, :cond_3

    .line 2637
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v2, v3, v1}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2639
    .restart local v1    # "position":I
    if-ltz v1, :cond_2

    .line 2640
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2641
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2642
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2644
    :cond_2
    const/4 v0, 0x1

    .line 2648
    .end local v1    # "position":I
    .end local v3    # "lastItem":I
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2649
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2650
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2653
    :cond_4
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 4147
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 150
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 529
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4044
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4045
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v0

    return-object v0

    .line 4050
    :cond_0
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 4051
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 4052
    .local v0, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 4053
    .local v2, "count":I
    new-array v3, v2, [J

    .line 4054
    .local v3, "ids":[J
    iget-object v4, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4056
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, 0x0

    .line 4057
    .local v5, "checkedCount":I
    move v6, v5

    move v5, v1

    .local v5, "i":I
    .local v6, "checkedCount":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 4058
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4059
    add-int/lit8 v7, v6, 0x1

    .local v7, "checkedCount":I
    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v3, v6

    .line 4057
    .end local v6    # "checkedCount":I
    move v6, v7

    .end local v7    # "checkedCount":I
    .restart local v6    # "checkedCount":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4065
    .end local v5    # "i":I
    :cond_2
    if-ne v6, v2, :cond_3

    .line 4066
    return-object v3

    .line 4068
    :cond_3
    new-array v5, v6, [J

    .line 4069
    .local v5, "result":[J
    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4071
    return-object v5

    .line 4074
    .end local v0    # "states":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "ids":[J
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "result":[J
    .end local v6    # "checkedCount":I
    :cond_4
    new-array v0, v1, [J

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3696
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .line 3724
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .line 493
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .line 4079
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->getHeightForPosition(I)I

    move-result v0

    .line 4080
    .local v0, "height":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->shouldAdjustHeightForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4081
    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v1, v0

    return v1

    .line 4083
    :cond_0
    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .line 3423
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 278
    iget v0, p0, Landroid/widget/ListView;->mBottom:I

    iget v1, p0, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3821
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3802
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .locals 7

    .line 3428
    iget-boolean v0, p0, Landroid/widget/ListView;->mCachingActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_0

    .line 3429
    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3430
    .local v0, "retValue":Z
    :goto_0
    if-eqz v0, :cond_8

    .line 3432
    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget v3, p0, Landroid/widget/ListView;->mPaddingTop:I

    .line 3433
    .local v3, "listTop":I
    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3434
    .local v4, "first":Landroid/view/View;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_4

    goto :goto_3

    .line 3437
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    .line 3438
    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_5
    iget v6, p0, Landroid/widget/ListView;->mPaddingBottom:I

    :goto_2
    sub-int/2addr v5, v6

    .line 3439
    .local v5, "listBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3440
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v6, v5, :cond_8

    .line 3441
    :cond_6
    return v2

    .line 3435
    .end local v1    # "last":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    :goto_3
    return v2

    .line 3444
    .end local v3    # "listTop":I
    .end local v4    # "first":Landroid/view/View;
    :cond_8
    return v0
.end method

.method protected layoutChildren()V
    .locals 33

    .line 1699
    move-object/from16 v7, p0

    iget-boolean v8, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1700
    .local v8, "blockLayoutRequests":Z
    if-eqz v8, :cond_0

    .line 1701
    return-void

    .line 1704
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1707
    const/4 v9, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1711
    iget-object v1, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    .line 1712
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1713
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_1

    .line 2035
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2037
    :cond_1
    if-nez v8, :cond_2

    .line 2038
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1714
    :cond_2
    return-void

    .line 2034
    :catchall_0
    move-exception v0

    move/from16 v25, v8

    goto/16 :goto_15

    .line 1717
    :cond_3
    :try_start_2
    iget-object v1, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v10, v1

    .line 1718
    .local v10, "childrenTop":I
    iget v1, v7, Landroid/widget/ListView;->mBottom:I

    iget v2, v7, Landroid/widget/ListView;->mTop:I

    sub-int/2addr v1, v2

    iget-object v2, v7, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v1, v2

    .line 1719
    .local v11, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    move v12, v1

    .line 1721
    .local v12, "childCount":I
    const/4 v1, 0x0

    .line 1722
    .local v1, "index":I
    const/4 v2, 0x0

    .line 1725
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 1726
    .local v3, "oldSel":Landroid/view/View;
    const/4 v4, 0x0

    .line 1727
    .local v4, "oldFirst":Landroid/view/View;
    const/4 v5, 0x0

    .line 1730
    .local v5, "newSel":Landroid/view/View;
    iget v6, v7, Landroid/widget/ListView;->mLayoutMode:I

    packed-switch v6, :pswitch_data_0

    .line 1745
    iget v6, v7, Landroid/widget/ListView;->mSelectedPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1732
    :pswitch_0
    :try_start_3
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v1, v6, v13

    .line 1733
    if-ltz v1, :cond_4

    if-ge v1, v12, :cond_4

    .line 1734
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v6

    goto :goto_0

    .line 1741
    :pswitch_1
    nop

    .line 1762
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .local v13, "oldSel":Landroid/view/View;
    .local v14, "oldFirst":Landroid/view/View;
    .local v15, "newSel":Landroid/view/View;
    .local v16, "index":I
    .local v17, "delta":I
    :cond_4
    :goto_0
    move/from16 v16, v1

    move/from16 v17, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    goto :goto_2

    .line 1745
    .end local v13    # "oldSel":Landroid/view/View;
    .end local v14    # "oldFirst":Landroid/view/View;
    .end local v15    # "newSel":Landroid/view/View;
    .end local v16    # "index":I
    .end local v17    # "delta":I
    .restart local v1    # "index":I
    .restart local v2    # "delta":I
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "oldFirst":Landroid/view/View;
    .restart local v5    # "newSel":Landroid/view/View;
    :goto_1
    :try_start_4
    iget v13, v7, Landroid/widget/ListView;->mFirstPosition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    sub-int v1, v6, v13

    .line 1746
    if-ltz v1, :cond_5

    if-ge v1, v12, :cond_5

    .line 1747
    :try_start_5
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v6

    .line 1751
    :cond_5
    :try_start_6
    invoke-virtual {v7, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 1753
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ltz v6, :cond_6

    .line 1754
    :try_start_7
    iget v6, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    iget v13, v7, Landroid/widget/ListView;->mSelectedPosition:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int v2, v6, v13

    .line 1758
    :cond_6
    add-int v6, v1, v2

    :try_start_8
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 1762
    .end local v1    # "index":I
    .end local v2    # "delta":I
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "oldFirst":Landroid/view/View;
    .end local v5    # "newSel":Landroid/view/View;
    .restart local v13    # "oldSel":Landroid/view/View;
    .restart local v14    # "oldFirst":Landroid/view/View;
    .restart local v15    # "newSel":Landroid/view/View;
    .restart local v16    # "index":I
    .restart local v17    # "delta":I
    :goto_2
    iget-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v18, v1

    .line 1763
    .local v18, "dataChanged":Z
    if-eqz v18, :cond_7

    .line 1764
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1769
    :cond_7
    :try_start_a
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v1, :cond_a

    .line 1770
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1771
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2034
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_8

    .line 2035
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2037
    :cond_8
    if-nez v8, :cond_9

    .line 2038
    iput-boolean v9, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 1772
    :cond_9
    return-void

    .line 1773
    :cond_a
    :try_start_c
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_35

    .line 1782
    iget v1, v7, Landroid/widget/ListView;->mNextSelectedPosition:I

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1784
    const/4 v1, 0x0

    .line 1785
    .local v1, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    .line 1786
    .local v2, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v3, -0x1

    .line 1791
    .local v3, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v6, v4

    .line 1792
    .local v6, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_d

    .line 1793
    :try_start_d
    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v4

    .line 1794
    .local v4, "focusHost":Landroid/view/View;
    if-eqz v4, :cond_d

    .line 1795
    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 1796
    .local v5, "focusChild":Landroid/view/View;
    if-eqz v5, :cond_d

    .line 1797
    if-eqz v18, :cond_b

    invoke-direct {v7, v5}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1798
    invoke-virtual {v5}, Landroid/view/View;->hasTransientState()Z

    move-result v19

    if-eqz v19, :cond_c

    iget-boolean v9, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v9, :cond_c

    .line 1801
    :cond_b
    move-object v2, v4

    .line 1802
    nop

    .line 1803
    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object v1, v9

    .line 1808
    :cond_c
    invoke-virtual {v7, v5}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v3, v9

    .line 1813
    .end local v1    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v3    # "accessibilityFocusPosition":I
    .local v4, "accessibilityFocusPosition":I
    .local v5, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_d
    move-object v9, v1

    move-object v5, v2

    move v4, v3

    const/4 v1, 0x0

    .line 1814
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 1819
    .local v2, "focusLayoutRestoreView":Landroid/view/View;
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1820
    .local v3, "focusedChild":Landroid/view/View;
    if-eqz v3, :cond_11

    .line 1826
    if-eqz v18, :cond_e

    :try_start_f
    invoke-direct {v7, v3}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 1827
    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    move-result v19

    if-nez v19, :cond_e

    iget-boolean v0, v7, Landroid/widget/ListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_10

    .line 1828
    :cond_e
    move-object v0, v3

    .line 1830
    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1831
    .end local v2    # "focusLayoutRestoreView":Landroid/view/View;
    .local v1, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v1, :cond_f

    .line 1833
    invoke-virtual {v1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1836
    :cond_f
    move-object v2, v1

    move-object v1, v0

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v1, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v2    # "focusLayoutRestoreView":Landroid/view/View;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1841
    :cond_11
    move-object v0, v1

    .end local v1    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    :try_start_10
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1842
    .local v1, "firstPosition":I
    move-object/from16 v20, v2

    iget-object v2, v7, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1843
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    if-eqz v18, :cond_13

    .line 1844
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v21, v19

    .end local v19    # "i":I
    .local v21, "i":I
    move-object/from16 v22, v3

    move/from16 v3, v21

    if-ge v3, v12, :cond_12

    .line 1845
    .end local v21    # "i":I
    .local v3, "i":I
    .local v22, "focusedChild":Landroid/view/View;
    move/from16 v23, v4

    :try_start_11
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "accessibilityFocusPosition":I
    .local v23, "accessibilityFocusPosition":I
    move-object/from16 v24, v5

    add-int v5, v1, v3

    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v24, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    invoke-virtual {v2, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1844
    add-int/lit8 v19, v3, 0x1

    .end local v3    # "i":I
    .restart local v19    # "i":I
    move-object/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v5, v24

    goto :goto_3

    .line 1852
    .end local v19    # "i":I
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v4    # "accessibilityFocusPosition":I
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_12
    move/from16 v23, v4

    move-object/from16 v24, v5

    .end local v4    # "accessibilityFocusPosition":I
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    goto :goto_4

    .line 1848
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v3, "focusedChild":Landroid/view/View;
    .restart local v4    # "accessibilityFocusPosition":I
    .restart local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_13
    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v5

    .end local v3    # "focusedChild":Landroid/view/View;
    .end local v4    # "accessibilityFocusPosition":I
    .end local v5    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :try_start_12
    invoke-virtual {v2, v12, v1}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1852
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1853
    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1855
    iget v3, v7, Landroid/widget/ListView;->mLayoutMode:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    packed-switch v3, :pswitch_data_1

    .line 1896
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .local v19, "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .local v25, "blockLayoutRequests":Z
    .local v26, "accessibilityFocusPosition":I
    .local v27, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v28, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v29, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v12, :cond_18

    .line 1897
    :try_start_13
    iget-boolean v1, v7, Landroid/widget/ListView;->mStackFromBottom:Z

    goto/16 :goto_7

    .line 1893
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v1    # "firstPosition":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_2
    move/from16 v19, v1

    move-object v1, v7

    .end local v1    # "firstPosition":I
    .restart local v19    # "firstPosition":I
    move-object v5, v2

    move-object/from16 v4, v20

    move-object v2, v13

    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v20    # "focusLayoutRestoreView":Landroid/view/View;
    .local v4, "focusLayoutRestoreView":Landroid/view/View;
    .local v5, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    move-object/from16 v20, v22

    move-object v3, v15

    .end local v22    # "focusedChild":Landroid/view/View;
    .local v20, "focusedChild":Landroid/view/View;
    move/from16 v25, v8

    move/from16 v26, v23

    move-object v8, v4

    move/from16 v4, v17

    .end local v4    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    move-object/from16 v27, v9

    move-object/from16 v28, v24

    move-object v9, v5

    move v5, v10

    .end local v5    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    move-object/from16 v29, v6

    move v6, v11

    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    .line 1894
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_a

    .line 1864
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v1, "firstPosition":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_3
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v19    # "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v1, v7, Landroid/widget/ListView;->mSyncPosition:I

    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    .line 1865
    .local v1, "sel":Landroid/view/View;
    goto/16 :goto_a

    .line 1876
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v1, "firstPosition":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_4
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v19    # "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 1877
    .local v1, "selectedPosition":I
    iget v2, v7, Landroid/widget/ListView;->mSpecificTop:I

    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    .line 1884
    .local v2, "sel":Landroid/view/View;
    if-nez v2, :cond_15

    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v3, :cond_15

    .line 1885
    iget-object v3, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1886
    invoke-virtual {v3, v1}, Landroid/widget/ListView$FocusSelector;->setupFocusIfValid(I)Ljava/lang/Runnable;

    move-result-object v3

    .line 1887
    .local v3, "focusRunnable":Ljava/lang/Runnable;
    if-eqz v3, :cond_14

    .line 1888
    invoke-virtual {v7, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1890
    .end local v3    # "focusRunnable":Ljava/lang/Runnable;
    :cond_14
    nop

    .line 1914
    .end local v1    # "selectedPosition":I
    :cond_15
    :goto_5
    move-object v1, v2

    goto/16 :goto_a

    .line 1867
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v1, "firstPosition":I
    .local v2, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_5
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v19    # "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v7, v1, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    .line 1868
    .local v1, "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1869
    goto/16 :goto_a

    .line 1857
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v1, "firstPosition":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_6
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v19    # "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_16

    .line 1858
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-direct {v7, v1, v10, v11}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    .local v1, "sel":Landroid/view/View;
    :goto_6
    goto/16 :goto_a

    .line 1860
    .end local v1    # "sel":Landroid/view/View;
    :cond_16
    invoke-direct {v7, v10, v11}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    .line 1862
    .restart local v1    # "sel":Landroid/view/View;
    goto/16 :goto_a

    .line 1871
    .end local v19    # "firstPosition":I
    .end local v25    # "blockLayoutRequests":Z
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v1, "firstPosition":I
    .restart local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v8, "blockLayoutRequests":Z
    .local v9, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v20, "focusLayoutRestoreView":Landroid/view/View;
    .restart local v22    # "focusedChild":Landroid/view/View;
    .restart local v23    # "accessibilityFocusPosition":I
    .restart local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :pswitch_7
    move/from16 v19, v1

    move-object/from16 v29, v6

    move/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v8, v20

    move-object/from16 v20, v22

    move/from16 v26, v23

    move-object/from16 v28, v24

    move-object v9, v2

    .end local v1    # "firstPosition":I
    .end local v2    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v6    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v22    # "focusedChild":Landroid/view/View;
    .end local v23    # "accessibilityFocusPosition":I
    .end local v24    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v8, "focusLayoutRestoreView":Landroid/view/View;
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v19    # "firstPosition":I
    .local v20, "focusedChild":Landroid/view/View;
    .restart local v25    # "blockLayoutRequests":Z
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1872
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v1

    .line 1873
    .local v1, "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1874
    goto :goto_a

    .line 1897
    .end local v1    # "sel":Landroid/view/View;
    :goto_7
    if-nez v1, :cond_17

    .line 1898
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v3

    move v1, v3

    .line 1899
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1900
    invoke-direct {v7, v10}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    .end local v1    # "position":I
    move-object v1, v2

    .line 1901
    .local v1, "sel":Landroid/view/View;
    goto :goto_a

    .line 1902
    .end local v1    # "sel":Landroid/view/View;
    :cond_17
    iget v1, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1903
    .local v1, "position":I
    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1904
    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v7, v2, v11}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    .end local v1    # "position":I
    move-object v1, v2

    .line 1905
    .local v1, "sel":Landroid/view/View;
    goto :goto_a

    .line 1907
    .end local v1    # "sel":Landroid/view/View;
    :cond_18
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    if-ltz v1, :cond_1a

    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1a

    .line 1908
    iget v1, v7, Landroid/widget/ListView;->mSelectedPosition:I

    .line 1909
    if-nez v13, :cond_19

    .line 1908
    move v2, v10

    goto :goto_8

    .line 1909
    :cond_19
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1908
    :goto_8
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 1910
    :cond_1a
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    iget v2, v7, Landroid/widget/ListView;->mItemCount:I

    if-ge v1, v2, :cond_1c

    .line 1911
    iget v1, v7, Landroid/widget/ListView;->mFirstPosition:I

    .line 1912
    if-nez v14, :cond_1b

    .line 1911
    move v2, v10

    goto :goto_9

    .line 1912
    :cond_1b
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1911
    :goto_9
    invoke-direct {v7, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_6

    .line 1914
    :cond_1c
    const/4 v1, 0x0

    invoke-direct {v7, v1, v10}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_5

    .line 1921
    .restart local v1    # "sel":Landroid/view/View;
    :goto_a
    invoke-virtual {v9}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1924
    iget-object v2, v7, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1925
    iget-object v2, v7, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 1927
    const/4 v2, -0x1

    if-eqz v1, :cond_23

    .line 1930
    iget-boolean v3, v7, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v3, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_22

    .line 1931
    if-ne v1, v0, :cond_1d

    if-eqz v8, :cond_1d

    .line 1933
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_1e
    const/4 v3, 0x1

    goto :goto_b

    :cond_1f
    const/4 v3, 0x0

    .line 1934
    .local v3, "focusWasTaken":Z
    :goto_b
    if-nez v3, :cond_21

    .line 1938
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    .line 1939
    .local v4, "focused":Landroid/view/View;
    if-eqz v4, :cond_20

    .line 1940
    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    .line 1942
    :cond_20
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1943
    .end local v4    # "focused":Landroid/view/View;
    goto :goto_c

    .line 1944
    :cond_21
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1945
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1947
    .end local v3    # "focusWasTaken":Z
    :goto_c
    goto :goto_d

    .line 1948
    :cond_22
    invoke-virtual {v7, v2, v1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1950
    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v7, Landroid/widget/ListView;->mSelectedTop:I

    goto :goto_11

    .line 1952
    :cond_23
    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_25

    iget v3, v7, Landroid/widget/ListView;->mTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    goto :goto_e

    :cond_24
    const/4 v3, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v3, 0x1

    .line 1954
    .local v3, "inTouchMode":Z
    :goto_f
    if-eqz v3, :cond_27

    .line 1956
    iget v4, v7, Landroid/widget/ListView;->mMotionPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1957
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_26

    .line 1958
    iget v5, v7, Landroid/widget/ListView;->mMotionPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1960
    .end local v4    # "child":Landroid/view/View;
    :cond_26
    goto :goto_10

    :cond_27
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    if-eq v4, v2, :cond_29

    .line 1964
    iget v4, v7, Landroid/widget/ListView;->mSelectorPosition:I

    iget v5, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1965
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_28

    .line 1966
    iget v5, v7, Landroid/widget/ListView;->mSelectorPosition:I

    invoke-virtual {v7, v5, v4}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 1968
    .end local v4    # "child":Landroid/view/View;
    :cond_28
    goto :goto_10

    .line 1970
    :cond_29
    const/4 v4, 0x0

    iput v4, v7, Landroid/widget/ListView;->mSelectedTop:I

    .line 1971
    iget-object v4, v7, Landroid/widget/ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1976
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v8, :cond_2a

    .line 1977
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1982
    .end local v3    # "inTouchMode":Z
    :cond_2a
    :goto_11
    move-object/from16 v4, v29

    if-eqz v4, :cond_2e

    .line 1983
    .end local v29    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .local v4, "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v5

    .line 1984
    .local v5, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v5, :cond_2e

    .line 1985
    if-eqz v28, :cond_2d

    .line 1986
    move-object/from16 v6, v28

    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v21

    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .local v6, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    if-eqz v21, :cond_2c

    .line 1987
    nop

    .line 1988
    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 1989
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v27, :cond_2b

    if-eqz v2, :cond_2b

    .line 1990
    nop

    .line 1991
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move-object/from16 v3, v27

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    .line 1990
    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v1    # "sel":Landroid/view/View;
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v3, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v30, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v31, "sel":Landroid/view/View;
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 1992
    .local v0, "virtualViewId":I
    const/16 v1, 0x40

    move-object/from16 v32, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1994
    .end local v0    # "virtualViewId":I
    .end local v3    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v32, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_12

    .line 1995
    .end local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v31    # "sel":Landroid/view/View;
    .end local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v1    # "sel":Landroid/view/View;
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2b
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v27

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v1    # "sel":Landroid/view/View;
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v31    # "sel":Landroid/view/View;
    .restart local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v6}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1997
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_12
    nop

    .line 2012
    move/from16 v3, v26

    goto :goto_14

    .line 1997
    .end local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v31    # "sel":Landroid/view/View;
    .end local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v1    # "sel":Landroid/view/View;
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2c
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v27

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v1    # "sel":Landroid/view/View;
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v31    # "sel":Landroid/view/View;
    .restart local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_13

    .end local v6    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v31    # "sel":Landroid/view/View;
    .end local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v1    # "sel":Landroid/view/View;
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_2d
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v27

    move-object/from16 v6, v28

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v1    # "sel":Landroid/view/View;
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v6    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v31    # "sel":Landroid/view/View;
    .restart local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_13
    move/from16 v3, v26

    if-eq v3, v2, :cond_2f

    .line 1999
    .end local v26    # "accessibilityFocusPosition":I
    .local v3, "accessibilityFocusPosition":I
    iget v0, v7, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v0, v3, v0

    .line 2001
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1999
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 2002
    .local v0, "position":I
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2003
    .local v1, "restoreView":Landroid/view/View;
    if-eqz v1, :cond_2f

    .line 2004
    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .end local v0    # "position":I
    .end local v1    # "restoreView":Landroid/view/View;
    .end local v5    # "newAccessibilityFocusedView":Landroid/view/View;
    goto :goto_14

    .line 2012
    .end local v3    # "accessibilityFocusPosition":I
    .end local v6    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v31    # "sel":Landroid/view/View;
    .end local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .local v0, "focusLayoutRestoreDirectChild":Landroid/view/View;
    .local v1, "sel":Landroid/view/View;
    .restart local v26    # "accessibilityFocusPosition":I
    .restart local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    :cond_2e
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v3, v26

    move-object/from16 v32, v27

    move-object/from16 v6, v28

    .end local v0    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v1    # "sel":Landroid/view/View;
    .end local v26    # "accessibilityFocusPosition":I
    .end local v27    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v28    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v3    # "accessibilityFocusPosition":I
    .restart local v6    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .restart local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .restart local v31    # "sel":Landroid/view/View;
    .restart local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2f
    :goto_14
    if-eqz v8, :cond_30

    .line 2013
    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2014
    invoke-virtual {v8}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2017
    :cond_30
    const/4 v1, 0x0

    iput v1, v7, Landroid/widget/ListView;->mLayoutMode:I

    .line 2018
    iput-boolean v1, v7, Landroid/widget/ListView;->mDataChanged:Z

    .line 2019
    iget-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_31

    .line 2020
    iget-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2021
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/widget/ListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2023
    :cond_31
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mNeedSync:Z

    .line 2024
    iget v0, v7, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 2028
    iget v0, v7, Landroid/widget/ListView;->mItemCount:I

    if-lez v0, :cond_32

    .line 2029
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2032
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2034
    .end local v3    # "accessibilityFocusPosition":I
    .end local v4    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local v6    # "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    .end local v8    # "focusLayoutRestoreView":Landroid/view/View;
    .end local v9    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "oldSel":Landroid/view/View;
    .end local v14    # "oldFirst":Landroid/view/View;
    .end local v15    # "newSel":Landroid/view/View;
    .end local v16    # "index":I
    .end local v17    # "delta":I
    .end local v18    # "dataChanged":Z
    .end local v19    # "firstPosition":I
    .end local v20    # "focusedChild":Landroid/view/View;
    .end local v30    # "focusLayoutRestoreDirectChild":Landroid/view/View;
    .end local v31    # "sel":Landroid/view/View;
    .end local v32    # "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_33

    .line 2035
    iget-object v0, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v0}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2037
    :cond_33
    if-nez v25, :cond_34

    .line 2038
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    .line 2041
    :cond_34
    return-void

    .line 1774
    .end local v25    # "blockLayoutRequests":Z
    .local v8, "blockLayoutRequests":Z
    .restart local v10    # "childrenTop":I
    .restart local v11    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .restart local v13    # "oldSel":Landroid/view/View;
    .restart local v14    # "oldFirst":Landroid/view/View;
    .restart local v15    # "newSel":Landroid/view/View;
    .restart local v16    # "index":I
    .restart local v17    # "delta":I
    .restart local v18    # "dataChanged":Z
    :cond_35
    move/from16 v25, v8

    .end local v8    # "blockLayoutRequests":Z
    .restart local v25    # "blockLayoutRequests":Z
    :try_start_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1779
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 2034
    .end local v10    # "childrenTop":I
    .end local v11    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "oldSel":Landroid/view/View;
    .end local v14    # "oldFirst":Landroid/view/View;
    .end local v15    # "newSel":Landroid/view/View;
    .end local v16    # "index":I
    .end local v17    # "delta":I
    .end local v18    # "dataChanged":Z
    :catchall_1
    move-exception v0

    goto :goto_15

    .end local v25    # "blockLayoutRequests":Z
    .restart local v8    # "blockLayoutRequests":Z
    :catchall_2
    move-exception v0

    move/from16 v25, v8

    .end local v8    # "blockLayoutRequests":Z
    .restart local v25    # "blockLayoutRequests":Z
    :goto_15
    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v1, :cond_36

    .line 2035
    iget-object v1, v7, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v1}, Landroid/widget/ListView$FocusSelector;->onLayoutComplete()V

    .line 2037
    :cond_36
    if-nez v25, :cond_37

    .line 2038
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/widget/ListView;->mBlockLayoutRequests:Z

    :cond_37
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 2307
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2308
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 2312
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2313
    .local v2, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_2

    .line 2314
    if-eqz p2, :cond_1

    .line 2315
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2316
    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2317
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2320
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2321
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2322
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 2327
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    .line 2331
    :cond_3
    return p1

    .line 2328
    :cond_4
    :goto_2
    return v1

    .line 2309
    .end local v2    # "count":I
    :cond_5
    :goto_3
    return v1
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .line 2347
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2348
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2353
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2354
    .local v2, "after":I
    if-eq v2, v1, :cond_1

    .line 2355
    return v2

    .line 2359
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 2360
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2361
    if-eqz p3, :cond_3

    .line 2362
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v3, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2363
    :goto_0
    if-le p2, p1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2364
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2366
    :cond_2
    if-gt p2, p1, :cond_5

    .line 2367
    return v1

    .line 2370
    :cond_3
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2371
    :goto_1
    if-ge p2, p1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2372
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 2374
    :cond_4
    if-lt p2, p1, :cond_5

    .line 2375
    return v1

    .line 2379
    :cond_5
    return p2

    .line 2349
    .end local v2    # "after":I
    .end local v3    # "count":I
    :cond_6
    :goto_2
    return v1
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 1461
    move/from16 v2, p5

    iget-object v3, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1462
    .local v3, "adapter":Landroid/widget/ListAdapter;
    if-nez v3, :cond_0

    .line 1463
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    return v4

    .line 1467
    :cond_0
    iget-object v4, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1468
    .local v4, "returnedHeight":I
    iget v5, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1471
    .local v5, "dividerHeight":I
    const/4 v6, 0x0

    .line 1476
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v7, -0x1

    move/from16 v8, p3

    if-ne v8, v7, :cond_1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    move v9, v8

    :goto_0
    move v8, v9

    .line 1477
    .end local p3    # "endPosition":I
    .local v8, "endPosition":I
    iget-object v9, v0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1478
    .local v9, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v10

    .line 1479
    .local v10, "recyle":Z
    iget-object v11, v0, Landroid/widget/ListView;->mIsScrap:[Z

    .line 1481
    .local v11, "isScrap":[Z
    move v12, v6

    move v6, v4

    move/from16 v4, p2

    .local v4, "i":I
    .local v6, "returnedHeight":I
    .local v12, "prevHeightWithoutPartialChild":I
    :goto_1
    if-gt v4, v8, :cond_7

    .line 1482
    invoke-virtual {v0, v4, v11}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    .line 1484
    .local v13, "child":Landroid/view/View;
    move/from16 v14, p1

    invoke-direct {v0, v13, v4, v14, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1486
    if-lez v4, :cond_2

    .line 1488
    add-int/2addr v6, v5

    .line 1492
    :cond_2
    if-eqz v10, :cond_3

    .line 1493
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    iget v15, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1492
    invoke-virtual {v9, v15}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1494
    invoke-virtual {v9, v13, v7}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1497
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v6, v15

    .line 1499
    if-lt v6, v1, :cond_5

    .line 1505
    if-ltz v2, :cond_4

    if-le v4, v2, :cond_4

    if-lez v12, :cond_4

    if-eq v6, v1, :cond_4

    .line 1506
    nop

    .line 1502
    move v7, v12

    goto :goto_2

    .line 1507
    :cond_4
    nop

    .line 1502
    move v7, v1

    :goto_2
    return v7

    .line 1510
    :cond_5
    if-ltz v2, :cond_6

    if-lt v4, v2, :cond_6

    .line 1511
    move v12, v6

    .line 1481
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1517
    .end local v13    # "child":Landroid/view/View;
    :cond_7
    move/from16 v14, p1

    return v6
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1317
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1321
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 1322
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 3883
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3885
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3886
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3887
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3888
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3887
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3890
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3892
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3826
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3828
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3829
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    .line 3830
    .local v1, "closetChildIndex":I
    const/4 v2, 0x0

    .line 3831
    .local v2, "closestChildTop":I
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3832
    iget v3, p0, Landroid/widget/ListView;->mScrollX:I

    iget v4, p0, Landroid/widget/ListView;->mScrollY:I

    invoke-virtual {p3, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3836
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 3837
    iput v5, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 3838
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3843
    :cond_0
    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3844
    .local v3, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 3845
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 3846
    .local v6, "childCount":I
    iget v7, p0, Landroid/widget/ListView;->mFirstPosition:I

    .line 3848
    .local v7, "firstPosition":I
    nop

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 3850
    add-int v8, v7, v5

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3851
    goto :goto_1

    .line 3854
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3855
    .local v8, "other":Landroid/view/View;
    invoke-virtual {v8, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3856
    invoke-virtual {p0, v8, v3}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3857
    invoke-static {p3, v3, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v9

    .line 3859
    .local v9, "distance":I
    if-ge v9, v4, :cond_2

    .line 3860
    move v4, v9

    .line 3861
    move v1, v5

    .line 3862
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3848
    .end local v8    # "other":Landroid/view/View;
    .end local v9    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3867
    .end local v3    # "otherRect":Landroid/graphics/Rect;
    .end local v4    # "minDistance":I
    .end local v5    # "i":I
    .end local v6    # "childCount":I
    .end local v7    # "firstPosition":I
    :cond_3
    if-ltz v1, :cond_4

    .line 3868
    iget v3, p0, Landroid/widget/ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2

    .line 3870
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3872
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4192
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 4195
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 4196
    .local v6, "isHeading":Z
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 4197
    .local v1, "isSelected":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 4199
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4200
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4153
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4155
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 4156
    .local v0, "rowsCount":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectionModeForAccessibility()I

    move-result v1

    .line 4157
    .local v1, "selectionMode":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    .line 4159
    .local v2, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4161
    if-lez v0, :cond_0

    .line 4162
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 4164
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2420
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 2425
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2430
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object v6, p0

    move/from16 v7, p1

    .line 1345
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1347
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 1348
    .local v8, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1349
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1350
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1352
    .local v1, "heightSize":I
    const/4 v2, 0x0

    .line 1353
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .line 1354
    .local v3, "childHeight":I
    const/4 v4, 0x0

    .line 1356
    .local v4, "childState":I
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v5, :cond_0

    move v5, v10

    goto :goto_0

    :cond_0
    iget-object v5, v6, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    :goto_0
    iput v5, v6, Landroid/widget/ListView;->mItemCount:I

    .line 1357
    iget v5, v6, Landroid/widget/ListView;->mItemCount:I

    if-lez v5, :cond_2

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    .line 1359
    :cond_1
    iget-object v5, v6, Landroid/widget/ListView;->mIsScrap:[Z

    invoke-virtual {v6, v10, v5}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v5

    .line 1363
    .local v5, "child":Landroid/view/View;
    invoke-direct {v6, v5, v10, v7, v1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;III)V

    .line 1365
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1366
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1367
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v4, v11}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v4

    .line 1369
    invoke-virtual {v6}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1370
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/AbsListView$LayoutParams;

    iget v12, v12, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1369
    invoke-virtual {v11, v12}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1371
    iget-object v11, v6, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v11, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1375
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    move v10, v2

    move v12, v3

    move v11, v4

    .end local v2    # "childWidth":I
    .end local v3    # "childHeight":I
    .end local v4    # "childState":I
    .local v10, "childWidth":I
    .local v11, "childState":I
    .local v12, "childHeight":I
    if-nez v8, :cond_3

    .line 1376
    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    .line 1377
    invoke-virtual {v6}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 1382
    .end local v0    # "widthSize":I
    .local v2, "widthSize":I
    .local v13, "widthSize":I
    :goto_1
    move v13, v2

    goto :goto_2

    .line 1379
    .end local v2    # "widthSize":I
    .end local v13    # "widthSize":I
    .restart local v0    # "widthSize":I
    :cond_3
    const/high16 v2, -0x1000000

    and-int/2addr v2, v11

    or-int/2addr v2, v0

    goto :goto_1

    .line 1382
    .end local v0    # "widthSize":I
    .restart local v13    # "widthSize":I
    :goto_2
    if-nez v9, :cond_4

    .line 1383
    iget-object v0, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v6, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v12

    .line 1384
    invoke-virtual {v6}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 1387
    .end local v1    # "heightSize":I
    .local v0, "heightSize":I
    move v14, v0

    goto :goto_3

    .end local v0    # "heightSize":I
    .restart local v1    # "heightSize":I
    :cond_4
    move v14, v1

    .end local v1    # "heightSize":I
    .local v14, "heightSize":I
    :goto_3
    const/high16 v0, -0x80000000

    if-ne v9, v0, :cond_5

    .line 1389
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    move v1, v7

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v14

    .line 1392
    :cond_5
    invoke-virtual {v6, v13, v14}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1394
    iput v7, v6, Landroid/widget/ListView;->mWidthMeasureSpec:I

    .line 1395
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1326
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1327
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1328
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1329
    iget v1, p0, Landroid/widget/ListView;->mFirstPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1330
    .local v1, "childPosition":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1331
    .local v2, "childBottom":I
    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ListView;->mPaddingTop:I

    sub-int v4, p2, v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1332
    .local v3, "offset":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1333
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1334
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1336
    :cond_0
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1339
    .end local v0    # "focusedChild":Landroid/view/View;
    .end local v1    # "childPosition":I
    .end local v2    # "childBottom":I
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1340
    return-void
.end method

.method pageScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2577
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    .line 2578
    iget v2, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2579
    .local v2, "nextPage":I
    const/4 v3, 0x0

    .local v3, "down":Z
    :goto_0
    goto :goto_1

    .line 2580
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_5

    .line 2581
    iget v2, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v2, v1

    iget v3, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2582
    .restart local v2    # "nextPage":I
    const/4 v3, 0x1

    goto :goto_0

    .line 2584
    .restart local v3    # "down":Z
    :goto_1
    nop

    .line 2587
    if-ltz v2, :cond_4

    .line 2588
    iget v4, p0, Landroid/widget/ListView;->mSelectedPosition:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v4

    .line 2589
    .local v4, "position":I
    if-ltz v4, :cond_4

    .line 2590
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2591
    iget v0, p0, Landroid/widget/ListView;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, p0, Landroid/widget/ListView;->mSpecificTop:I

    .line 2593
    if-eqz v3, :cond_1

    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_1

    .line 2594
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2597
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 2598
    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2601
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2602
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2603
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2604
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2607
    :cond_3
    return v1

    .line 2611
    .end local v4    # "position":I
    :cond_4
    return v0

    .line 2584
    .end local v2    # "nextPage":I
    .end local v3    # "down":Z
    :cond_5
    return v0
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 4169
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4170
    return v1

    .line 4173
    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 4175
    :cond_1
    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4176
    .local v0, "row":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4177
    .local v2, "position":I
    if-ltz v0, :cond_2

    .line 4180
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4181
    return v1

    .line 4186
    .end local v0    # "row":I
    .end local v2    # "position":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .line 1430
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 504
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 510
    :cond_0
    const/4 v0, 0x1

    .line 512
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 513
    return v0

    .line 515
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 403
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 409
    :cond_0
    const/4 v0, 0x1

    .line 411
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 412
    return v0

    .line 414
    .end local v0    # "result":Z
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 665
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 668
    .local v0, "rectTopWithinChild":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 671
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    .line 672
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    .line 673
    .local v2, "listUnfadedTop":I
    add-int v3, v2, v1

    .line 674
    .local v3, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 676
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 678
    iget v5, p0, Landroid/widget/ListView;->mSelectedPosition:I

    if-gtz v5, :cond_0

    if-le v0, v4, :cond_1

    .line 679
    :cond_0
    add-int/2addr v2, v4

    .line 683
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 684
    .local v5, "childCount":I
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 686
    .local v6, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 688
    iget v7, p0, Landroid/widget/ListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_2

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v6, v4

    if-ge v7, v9, :cond_3

    .line 690
    :cond_2
    sub-int/2addr v3, v4

    .line 694
    :cond_3
    const/4 v7, 0x0

    .line 696
    .local v7, "scrollYDelta":I
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v10, 0x0

    if-le v9, v3, :cond_5

    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-le v9, v2, :cond_5

    .line 701
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_4

    .line 703
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_0

    .line 706
    :cond_4
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    add-int/2addr v7, v9

    .line 710
    :goto_0
    sub-int v9, v6, v3

    .line 711
    .local v9, "distanceToBottom":I
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 712
    .end local v9    # "distanceToBottom":I
    goto :goto_2

    :cond_5
    iget v9, p2, Landroid/graphics/Rect;->top:I

    if-ge v9, v2, :cond_7

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v3, :cond_7

    .line 717
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v9, v1, :cond_6

    .line 719
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    sub-int/2addr v7, v9

    goto :goto_1

    .line 722
    :cond_6
    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    sub-int/2addr v7, v9

    .line 726
    :goto_1
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 727
    .local v9, "top":I
    sub-int v11, v9, v2

    .line 728
    .local v11, "deltaToTop":I
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 731
    .end local v9    # "top":I
    .end local v11    # "deltaToTop":I
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    move v10, v8

    nop

    :cond_8
    move v8, v10

    .line 732
    .local v8, "scroll":Z
    if-eqz v8, :cond_9

    .line 733
    neg-int v9, v7

    invoke-direct {p0, v9}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 734
    const/4 v9, -0x1

    invoke-virtual {p0, v9, p1}, Landroid/widget/ListView;->positionSelector(ILandroid/view/View;)V

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Landroid/widget/ListView;->mSelectedTop:I

    .line 736
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 738
    :cond_9
    return v8
.end method

.method resetList()V
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 618
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 620
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 622
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 623
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 150
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 557
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 562
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 564
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 567
    :cond_1
    iput-object p1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1

    .line 565
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 570
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView;->mOldSelectedPosition:I

    .line 571
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/ListView;->mOldSelectedRowId:J

    .line 574
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 576
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 577
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 578
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    iput v0, p0, Landroid/widget/ListView;->mOldItemCount:I

    .line 579
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mItemCount:I

    .line 580
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 582
    new-instance v0, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 583
    iget-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 585
    iget-object v0, p0, Landroid/widget/ListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 588
    iget-boolean v0, p0, Landroid/widget/ListView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 589
    iget v0, p0, Landroid/widget/ListView;->mItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .local v0, "position":I
    goto :goto_2

    .line 591
    .end local v0    # "position":I
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 593
    .restart local v0    # "position":I
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 594
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 596
    iget v1, p0, Landroid/widget/ListView;->mItemCount:I

    if-nez v1, :cond_4

    .line 598
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 600
    .end local v0    # "position":I
    :cond_4
    goto :goto_3

    .line 601
    :cond_5
    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 602
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 604
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 607
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 608
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 2
    .param p1, "color"    # I

    .line 3449
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3450
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3451
    if-eqz v0, :cond_2

    .line 3452
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 3453
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3455
    :cond_1
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3457
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3458
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 3709
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3710
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_0

    .line 3712
    :cond_0
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3714
    :goto_0
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3715
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3716
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3717
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3718
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 3734
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3735
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3736
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3737
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .line 3772
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3773
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3774
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .line 3749
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3750
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3751
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .line 3412
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3413
    if-nez p1, :cond_0

    .line 3414
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3416
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .line 3813
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3814
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3815
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .line 3792
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3793
    iget v0, p0, Landroid/widget/ListView;->mScrollY:I

    if-gez v0, :cond_0

    .line 3794
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3796
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    .line 539
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 2263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 2264
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .line 2387
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 2388
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2389
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2390
    return-void

    .line 2393
    :cond_0
    iget-object v1, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2394
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2396
    :cond_1
    iput v0, p0, Landroid/widget/ListView;->mNextSelectedPosition:I

    .line 2397
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/ListView;->mLayoutMode:I

    .line 2400
    :goto_0
    return-void
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .line 2273
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2274
    const/4 v0, 0x0

    .line 2276
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/ListView;->mSelectedPosition:I

    .line 2278
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_1

    .line 2279
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_0

    .line 2280
    const/4 v0, 0x1

    goto :goto_0

    .line 2281
    :cond_0
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_1

    .line 2282
    const/4 v0, 0x1

    .line 2286
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_2

    .line 2287
    iget-object v2, p0, Landroid/widget/ListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2290
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2292
    if-eqz v0, :cond_3

    .line 2293
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2295
    :cond_3
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1095
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 1096
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 1085
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1086
    return-void
.end method

.method trackMotionScroll(II)Z
    .locals 2
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .line 2045
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 2046
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2047
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/widget/ListView;->removeUnusedFixedViews(Ljava/util/List;)V

    .line 2048
    return v0
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    .line 4215
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Landroid/widget/HeaderViewListAdapter;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    return-object v0
.end method

.method protected wrapHeaderListAdapterInternal()V
    .locals 3

    .line 4220
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4221
    return-void
.end method
