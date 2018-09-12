.class public Lcom/oneplus/lib/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;,
        Lcom/oneplus/lib/widget/ViewPager$LayoutParams;,
        Lcom/oneplus/lib/widget/ViewPager$PagerObserver;,
        Lcom/oneplus/lib/widget/ViewPager$SavedState;,
        Lcom/oneplus/lib/widget/ViewPager$Decor;,
        Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/oneplus/lib/widget/ViewPager$PageTransformer;,
        Lcom/oneplus/lib/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;,
        Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/lib/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SCROLL_X:I = 0x1000000

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private final mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private final mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private final mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private final mLeftEdge:Landroid/widget/EdgeEffect;

.field private mLeftIncr:I

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mObserver:Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private final mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 84
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/ViewPager;->sPositionComparator:Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 324
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempItem:Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredCurItem:I

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 107
    iput-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 120
    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    .line 125
    const v1, -0x800001

    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    .line 126
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    .line 135
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    .line 153
    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 177
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    .line 209
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/ViewPager$3;-><init>(Lcom/oneplus/lib/widget/ViewPager;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollState:I

    .line 326
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setWillNotDraw(Z)V

    .line 327
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setDescendantFocusability(I)V

    .line 328
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->setFocusable(Z)V

    .line 330
    new-instance v0, Landroid/widget/Scroller;

    sget-object v2, Lcom/oneplus/lib/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 331
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 332
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 334
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    .line 335
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mMinimumVelocity:I

    .line 336
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mMaximumVelocity:I

    .line 337
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 338
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 340
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mFlingDistance:I

    .line 341
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mCloseEnough:I

    .line 342
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mDefaultGutterSize:I

    .line 344
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 345
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 347
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/ViewPager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/lib/widget/ViewPager;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/lib/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Lcom/oneplus/lib/widget/ViewPager$ItemInfo;ILcom/oneplus/lib/widget/ViewPager$ItemInfo;)V
    .locals 11
    .param p1, "curItem"    # Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1094
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1095
    .local v0, "N":I
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 1096
    .local v1, "width":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1099
    .local v2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_7

    .line 1100
    iget v3, p3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 1103
    .local v3, "oldCurPosition":I
    iget v4, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_4

    .line 1104
    const/4 v4, 0x0

    .line 1105
    .local v4, "itemIndex":I
    iget v5, p3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 1106
    .local v5, "offset":F
    add-int/lit8 v6, v3, 0x1

    .local v6, "pos":I
    :goto_1
    iget v7, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-gt v6, v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 1107
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1108
    .local v7, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_2
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_1

    .line 1109
    add-int/lit8 v4, v4, 0x1

    .line 1110
    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_2

    .line 1113
    :cond_1
    :goto_3
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_2

    .line 1116
    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1117
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1120
    :cond_2
    iput v5, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1121
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1106
    .end local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1123
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_3
    goto :goto_7

    :cond_4
    iget v4, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_7

    .line 1124
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1125
    .restart local v4    # "itemIndex":I
    iget v5, p3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1126
    .restart local v5    # "offset":F
    add-int/lit8 v6, v3, -0x1

    .restart local v6    # "pos":I
    :goto_4
    iget v7, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-lt v6, v7, :cond_7

    if-ltz v4, :cond_7

    .line 1127
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1128
    .restart local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_5
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_5

    if-lez v4, :cond_5

    .line 1129
    add-int/lit8 v4, v4, -0x1

    .line 1130
    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_5

    .line 1133
    :cond_5
    :goto_6
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_6

    .line 1136
    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1137
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1140
    :cond_6
    iget v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1141
    iput v5, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1126
    .end local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1147
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_7
    :goto_7
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1148
    .local v3, "itemCount":I
    iget v4, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1149
    .local v4, "offset":F
    iget v5, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1150
    .local v5, "pos":I
    iget v6, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_8

    iget v6, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_8

    :cond_8
    const v6, -0x800001

    :goto_8
    iput v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    .line 1151
    iget v6, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_9

    .line 1152
    iget v6, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_9

    :cond_9
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    .line 1155
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_a
    if-ltz v6, :cond_c

    .line 1156
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1157
    .restart local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_b
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_a

    .line 1158
    iget-object v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .local v10, "pos":I
    invoke-virtual {v9, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    .end local v5    # "pos":I
    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 1156
    move v5, v10

    goto :goto_b

    .line 1160
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_a
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1161
    iput v4, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1162
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_b

    iput v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    .line 1155
    .end local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_b
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1165
    .end local v6    # "i":I
    :cond_c
    iget v6, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1166
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1169
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_c
    if-ge v5, v3, :cond_f

    .line 1170
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1171
    .restart local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_d
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_d

    .line 1172
    iget-object v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    .end local v4    # "pos":I
    add-float/2addr v4, v2

    add-float/2addr v6, v4

    .line 1170
    move v4, v10

    goto :goto_d

    .line 1174
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_d
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_e

    .line 1175
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    .line 1177
    :cond_e
    iput v6, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 1178
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1169
    .end local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1180
    .end local v5    # "i":I
    :cond_f
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 2741
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private completeScroll(Z)V
    .locals 6
    .param p1, "postEvents"    # Z

    .line 1742
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1743
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1745
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1746
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1747
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1748
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 1749
    .local v3, "oldY":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1750
    .local v4, "x":I
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1751
    .local v5, "y":I
    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 1752
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 1755
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 1756
    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "needPopulate":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1757
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1758
    .local v3, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-boolean v4, v3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1759
    const/4 v2, 0x1

    .line 1760
    iput-boolean v1, v3, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1756
    .end local v3    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1763
    .end local v0    # "i":I
    :cond_4
    if-eqz v2, :cond_6

    .line 1764
    if-eqz p1, :cond_5

    .line 1765
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1767
    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1770
    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2210
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mFlingDistance:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    .line 2211
    if-gez p3, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-int v0, p1, v0

    .local v0, "targetPage":I
    goto :goto_2

    .line 2213
    .end local v0    # "targetPage":I
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 2214
    .local v0, "truncator":F
    :goto_1
    int-to-float v1, p1

    iget v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    int-to-float v3, v3

    add-float v4, p2, v0

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v0, v1

    .line 2217
    .local v0, "targetPage":I
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2218
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2219
    .local v1, "firstItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2222
    .local v2, "lastItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v3, v4}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    .line 2225
    .end local v1    # "firstItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_3
    return v0
.end method

.method private enableLayers(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 1777
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1778
    .local v0, "childCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1779
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 1780
    .local v3, "layerType":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1778
    .end local v3    # "layerType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1782
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 2342
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2344
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2348
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2517
    if-nez p1, :cond_0

    .line 2518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2520
    :cond_0
    if-nez p2, :cond_1

    .line 2521
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2522
    return-object p1

    .line 2524
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2525
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2526
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2527
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2529
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2530
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_2

    .line 2531
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2532
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2533
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2534
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2535
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2537
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2538
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2539
    :cond_2
    return-object p1
.end method

.method private getLeftEdgeForItem(I)I
    .locals 6
    .param p1, "position"    # I

    .line 550
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 551
    .local v0, "info":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 552
    const/4 v1, 0x0

    return v1

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 556
    .local v1, "width":I
    int-to-float v2, v1

    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/util/MathUtils;->constrain(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 559
    .local v2, "scaledOffset":I
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    int-to-float v3, v1

    iget v4, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 561
    .local v3, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    return v4

    .line 563
    .end local v3    # "itemWidth":I
    :cond_1
    return v2
.end method

.method private getPaddedWidth()I
    .locals 2

    .line 446
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getScrollStart()I
    .locals 2

    .line 2194
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 2197
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private infoForFirstVisiblePage()Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .locals 18

    .line 2147
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollStart()I

    move-result v1

    .line 2148
    .local v1, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 2149
    .local v2, "width":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2150
    .local v4, "scrollOffset":F
    :goto_0
    if-lez v2, :cond_1

    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    nop

    .line 2152
    .local v3, "marginOffset":F
    :cond_1
    const/4 v5, -0x1

    .line 2153
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .line 2154
    .local v6, "lastOffset":F
    const/4 v7, 0x0

    .line 2155
    .local v7, "lastWidth":F
    const/4 v8, 0x1

    .line 2156
    .local v8, "first":Z
    const/4 v9, 0x0

    .line 2158
    .local v9, "lastItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2159
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_7

    .line 2160
    iget-object v12, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2163
    .local v12, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-nez v8, :cond_2

    iget v13, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_2

    .line 2165
    iget-object v12, v0, Lcom/oneplus/lib/widget/ViewPager;->mTempItem:Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2166
    add-float v13, v6, v7

    add-float/2addr v13, v3

    iput v13, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 2167
    add-int/lit8 v13, v5, 0x1

    iput v13, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 2168
    iget-object v13, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v14, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2169
    add-int/lit8 v11, v11, -0x1

    .line 2172
    :cond_2
    iget v13, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 2173
    .local v13, "offset":F
    move v14, v13

    .line 2174
    .local v14, "startBound":F
    if-nez v8, :cond_4

    cmpl-float v15, v4, v14

    if-ltz v15, :cond_3

    goto :goto_2

    .line 2180
    :cond_3
    return-object v9

    .line 2175
    :cond_4
    :goto_2
    iget v15, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v13

    add-float/2addr v15, v3

    .line 2176
    .local v15, "endBound":F
    cmpg-float v16, v4, v15

    if-ltz v16, :cond_6

    move/from16 v17, v1

    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .end local v1    # "startOffset":I
    .local v17, "startOffset":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_5

    goto :goto_3

    .line 2179
    .end local v15    # "endBound":F
    :cond_5
    nop

    .line 2183
    const/4 v8, 0x0

    .line 2184
    iget v5, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 2185
    move v6, v13

    .line 2186
    iget v7, v12, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2187
    move-object v9, v12

    .line 2159
    .end local v12    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    goto :goto_1

    .line 2177
    .end local v17    # "startOffset":I
    .restart local v1    # "startOffset":I
    .restart local v12    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v13    # "offset":F
    .restart local v14    # "startBound":F
    .restart local v15    # "endBound":F
    :cond_6
    move/from16 v17, v1

    .end local v1    # "startOffset":I
    .restart local v17    # "startOffset":I
    :goto_3
    return-object v12

    .line 2190
    .end local v11    # "i":I
    .end local v12    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    .end local v15    # "endBound":F
    .end local v17    # "startOffset":I
    .restart local v1    # "startOffset":I
    :cond_7
    move/from16 v17, v1

    .end local v1    # "startOffset":I
    .restart local v17    # "startOffset":I
    return-object v9
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1773
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2327
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2328
    .local v1, "pointerId":I
    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2331
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2332
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 2333
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 2334
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2335
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2338
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "scrollX"    # I

    .line 1628
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1629
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mCalledSuper:Z

    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/oneplus/lib/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1631
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_0

    .line 1635
    return v1

    .line 1632
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1641
    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    .local v0, "scrollStart":I
    goto :goto_0

    .line 1643
    .end local v0    # "scrollStart":I
    :cond_2
    move v0, p1

    .line 1646
    .restart local v0    # "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->infoForFirstVisiblePage()Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1647
    .local v2, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 1648
    .local v3, "width":I
    iget v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    .line 1649
    .local v4, "widthWithMargin":I
    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1650
    .local v5, "marginOffset":F
    iget v6, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 1651
    .local v6, "currentPage":I
    int-to-float v7, v0

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 1653
    .local v7, "pageOffset":F
    int-to-float v8, v4

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1655
    .local v8, "offsetPixels":I
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mCalledSuper:Z

    .line 1656
    invoke-virtual {p0, v6, v7, v8}, Lcom/oneplus/lib/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1657
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mCalledSuper:Z

    if-eqz v1, :cond_3

    .line 1661
    const/4 v1, 0x1

    return v1

    .line 1658
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v9, "onPageScrolled did not call superclass implementation"

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private performDrag(F)Z
    .locals 20
    .param p1, "x"    # F

    move-object/from16 v0, p0

    .line 2063
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2065
    .local v2, "needsInvalidate":Z
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v3

    .line 2066
    .local v3, "width":I
    iget v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v4, v1

    .line 2067
    .local v4, "deltaX":F
    iput v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 2071
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2072
    iget-object v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2073
    .local v5, "startEdge":Landroid/widget/EdgeEffect;
    iget-object v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .local v6, "endEdge":Landroid/widget/EdgeEffect;
    goto :goto_0

    .line 2075
    .end local v5    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v6    # "endEdge":Landroid/widget/EdgeEffect;
    :cond_0
    iget-object v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2076
    .restart local v5    # "startEdge":Landroid/widget/EdgeEffect;
    iget-object v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2080
    .restart local v6    # "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v4

    .line 2082
    .local v7, "nextScrollX":F
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    const/high16 v9, 0x4b800000    # 1.6777216E7f

    if-eqz v8, :cond_1

    .line 2083
    sub-float v8, v9, v7

    .local v8, "scrollStart":F
    goto :goto_1

    .line 2085
    .end local v8    # "scrollStart":F
    :cond_1
    move v8, v7

    .line 2089
    .restart local v8    # "scrollStart":F
    :goto_1
    iget-object v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2090
    .local v10, "startItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v12, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    const/4 v13, 0x1

    if-nez v12, :cond_2

    move v12, v13

    goto :goto_2

    :cond_2
    move v12, v11

    .line 2091
    .local v12, "startAbsolute":Z
    :goto_2
    if-eqz v12, :cond_3

    .line 2092
    iget v14, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v3

    mul-float/2addr v14, v15

    .local v14, "startBound":F
    goto :goto_3

    .line 2094
    .end local v14    # "startBound":F
    :cond_3
    int-to-float v14, v3

    iget v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v14, v15

    .line 2098
    .restart local v14    # "startBound":F
    :goto_3
    iget-object v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v13

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2099
    .local v11, "endItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v15, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v13

    if-ne v15, v9, :cond_4

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    move v9, v13

    .line 2100
    .local v9, "endAbsolute":Z
    if-eqz v9, :cond_5

    .line 2101
    iget v13, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v15, v3

    mul-float/2addr v13, v15

    .local v13, "endBound":F
    goto :goto_5

    .line 2103
    .end local v13    # "endBound":F
    :cond_5
    int-to-float v13, v3

    iget v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v13, v15

    .line 2107
    .restart local v13    # "endBound":F
    :goto_5
    cmpg-float v15, v8, v14

    if-gez v15, :cond_7

    .line 2108
    if-eqz v12, :cond_6

    .line 2109
    sub-float v15, v14, v8

    .line 2110
    .local v15, "over":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    int-to-float v1, v3

    div-float v1, v16, v1

    invoke-virtual {v5, v1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2111
    const/4 v2, 0x1

    .line 2113
    .end local v15    # "over":F
    :cond_6
    move v1, v14

    .local v1, "clampedScrollStart":F
    :goto_6
    goto :goto_7

    .line 2114
    .end local v1    # "clampedScrollStart":F
    :cond_7
    cmpl-float v1, v8, v13

    if-lez v1, :cond_9

    .line 2115
    if-eqz v9, :cond_8

    .line 2116
    sub-float v1, v8, v13

    .line 2117
    .local v1, "over":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v17, v1

    int-to-float v1, v3

    .end local v1    # "over":F
    .local v17, "over":F
    div-float/2addr v15, v1

    invoke-virtual {v6, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2118
    const/4 v1, 0x1

    .line 2120
    .end local v2    # "needsInvalidate":Z
    .end local v17    # "over":F
    .local v1, "needsInvalidate":Z
    move v2, v1

    .end local v1    # "needsInvalidate":Z
    .restart local v2    # "needsInvalidate":Z
    :cond_8
    move v1, v13

    goto :goto_6

    .line 2122
    :cond_9
    move v1, v8

    .line 2127
    .local v1, "clampedScrollStart":F
    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 2128
    const/high16 v15, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v15, v1

    .local v15, "targetScrollX":F
    goto :goto_8

    .line 2130
    .end local v15    # "targetScrollX":F
    :cond_a
    move v15, v1

    .line 2134
    .restart local v15    # "targetScrollX":F
    :goto_8
    move/from16 v18, v1

    iget v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .end local v1    # "clampedScrollStart":F
    .local v18, "clampedScrollStart":F
    move/from16 v19, v3

    float-to-int v3, v15

    .end local v3    # "width":I
    .local v19, "width":I
    int-to-float v3, v3

    sub-float v3, v15, v3

    add-float/2addr v1, v3

    iput v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 2136
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 2137
    float-to-int v1, v15

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/ViewPager;->pageScrolled(I)Z

    .line 2139
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1451
    if-lez p2, :cond_1

    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    .line 1453
    .local v2, "widthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v4, v4, p4

    .line 1455
    .local v4, "oldWidthWithMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v6

    .line 1456
    .local v6, "xpos":I
    int-to-float v7, v6

    int-to-float v8, v4

    div-float/2addr v7, v8

    .line 1457
    .local v7, "pageOffset":F
    int-to-float v8, v2

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1459
    .local v8, "newOffsetPixels":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 1460
    iget-object v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1462
    iget-object v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getDuration()I

    move-result v9

    iget-object v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->timePassed()I

    move-result v10

    sub-int v15, v9, v10

    .line 1463
    .local v15, "newDuration":I
    iget v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1464
    .local v14, "targetInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v11, 0x0

    iget v10, v14, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v12, v1

    mul-float/2addr v10, v12

    float-to-int v12, v10

    const/4 v13, 0x0

    move v10, v8

    move-object/from16 v16, v14

    move v14, v15

    .end local v14    # "targetInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v16, "targetInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    invoke-virtual/range {v9 .. v14}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1467
    .end local v2    # "widthWithMargin":I
    .end local v4    # "oldWidthWithMargin":I
    .end local v6    # "xpos":I
    .end local v7    # "pageOffset":F
    .end local v8    # "newOffsetPixels":I
    .end local v15    # "newDuration":I
    .end local v16    # "targetInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_0
    goto :goto_1

    .line 1468
    :cond_1
    iget v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1469
    .local v2, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    iget v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1470
    .local v4, "scrollOffset":F
    :goto_0
    nop

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 1472
    .local v6, "scrollPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1473
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->completeScroll(Z)V

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 1477
    .end local v2    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v4    # "scrollOffset":F
    .end local v6    # "scrollPos":I
    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 4

    .line 422
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 423
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 425
    .local v2, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 426
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->removeViewAt(I)V

    .line 427
    add-int/lit8 v0, v0, -0x1

    .line 422
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 2056
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2057
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2058
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2060
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 524
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 526
    .local v0, "destX":I
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 527
    invoke-virtual {p0, v0, v1, p3}, Lcom/oneplus/lib/widget/ViewPager;->smoothScrollTo(III)V

    .line 529
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 532
    :cond_0
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    .line 533
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 536
    :cond_1
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 539
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 540
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 543
    :cond_3
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->completeScroll(Z)V

    .line 544
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 545
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->pageScrolled(I)Z

    .line 547
    :cond_4
    :goto_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 356
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollState:I

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 363
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->enableLayers(Z)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 368
    :cond_3
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2351
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2352
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2363
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1078
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1084
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1085
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1086
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1087
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1089
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Lcom/oneplus/lib/widget/ViewPager;->sPositionComparator:Lcom/oneplus/lib/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1091
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2566
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2568
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2570
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2571
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2572
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2573
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2574
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2575
    .local v4, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2576
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2571
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2586
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 2589
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 2592
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2593
    return-void

    .line 2595
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2596
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2597
    return-void

    .line 2599
    :cond_4
    if-eqz p1, :cond_5

    .line 2600
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    :cond_5
    return-void
.end method

.method addNewItem(II)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 793
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;-><init>()V

    .line 794
    .local v0, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 795
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 797
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 798
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :goto_1
    return-object v0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2613
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2614
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2615
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2616
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2617
    .local v2, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2618
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2613
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2622
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1270
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1271
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1273
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1274
    .local v0, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/oneplus/lib/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1275
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    .line 1276
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1277
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1280
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1282
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1292
    :goto_1
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2451
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2452
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 2453
    const/4 v0, 0x0

    goto :goto_3

    .line 2454
    :cond_0
    if-eqz v0, :cond_4

    .line 2455
    const/4 v1, 0x0

    .line 2456
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2458
    if-ne v2, p0, :cond_1

    .line 2459
    const/4 v1, 0x1

    .line 2460
    goto :goto_1

    .line 2457
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2463
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2466
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2469
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 2471
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    const-string v3, "ViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2471
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    const/4 v0, 0x0

    .line 2477
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 2479
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2481
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_8

    if-eq v2, v0, :cond_8

    .line 2482
    if-ne p1, v4, :cond_6

    .line 2485
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2486
    .local v3, "nextLeft":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/oneplus/lib/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2487
    .local v4, "currLeft":I
    if-eqz v0, :cond_5

    if-lt v3, v4, :cond_5

    .line 2488
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 2490
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2492
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_4
    goto :goto_7

    :cond_6
    if-ne p1, v3, :cond_c

    .line 2495
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2496
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/oneplus/lib/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2497
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_7

    if-gt v3, v4, :cond_7

    .line 2498
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 2500
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2502
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_5
    goto :goto_7

    .line 2503
    :cond_8
    if-eq p1, v4, :cond_b

    const/4 v4, 0x1

    if-ne p1, v4, :cond_9

    goto :goto_6

    .line 2506
    :cond_9
    if-eq p1, v3, :cond_a

    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    .line 2508
    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_7

    .line 2505
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2510
    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    .line 2511
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/ViewPager;->playSoundEffect(I)V

    .line 2513
    :cond_d
    return v1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    move-object v0, p1

    .line 2393
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2394
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2395
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2396
    .local v3, "scrollX":I
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2397
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2399
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2401
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2402
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 2403
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2404
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2405
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2404
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/lib/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2406
    return v2

    .line 2399
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2411
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v3, p3

    neg-int v4, v3

    invoke-virtual {v0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v3, p3

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2366
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2367
    return v1

    .line 2370
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 2371
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2372
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2373
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1

    .line 2374
    :cond_2
    if-lez p1, :cond_4

    .line 2375
    int-to-float v4, v0

    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 2377
    :cond_4
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2669
    instance-of v0, p1, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 5

    .line 1603
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1605
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1606
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1607
    .local v2, "x":I
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1609
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1610
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 1612
    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1613
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1614
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 1619
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1620
    return-void

    .line 1624
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->completeScroll(Z)V

    .line 1625
    return-void
.end method

.method dataSetChanged()V
    .locals 12

    .line 808
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 809
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mExpectedAdapterCount:I

    .line 810
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 811
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 812
    .local v1, "needPopulate":Z
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    .line 814
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 815
    .local v5, "isUpdating":Z
    move v6, v2

    move v2, v1

    move v1, v4

    .local v1, "i":I
    .local v2, "needPopulate":Z
    .local v6, "newCurrItem":I
    :goto_1
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 816
    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 817
    .local v7, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 819
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 820
    goto :goto_2

    .line 823
    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 824
    iget-object v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 825
    add-int/lit8 v1, v1, -0x1

    .line 827
    if-nez v5, :cond_2

    .line 828
    iget-object v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 829
    const/4 v5, 0x1

    .line 832
    :cond_2
    iget-object v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v10, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 833
    const/4 v2, 0x1

    .line 835
    iget v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    iget v10, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_5

    .line 837
    iget v9, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 838
    const/4 v2, 0x1

    goto :goto_2

    .line 843
    :cond_3
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 844
    iget v9, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_4

    .line 846
    move v6, v8

    .line 849
    :cond_4
    iput v8, v7, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 850
    const/4 v2, 0x1

    .line 815
    .end local v7    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_5
    :goto_2
    add-int/2addr v1, v3

    goto :goto_1

    .line 854
    .end local v1    # "i":I
    :cond_6
    if-eqz v5, :cond_7

    .line 855
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 858
    :cond_7
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/oneplus/lib/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 860
    if-eqz v2, :cond_a

    .line 862
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 863
    .local v1, "childCount":I
    move v7, v4

    .local v7, "i":I
    :goto_3
    if-ge v7, v1, :cond_9

    .line 864
    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 865
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 866
    .local v9, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_8

    .line 867
    const/4 v10, 0x0

    iput v10, v9, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 863
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 871
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {p0, v6, v4, v3}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 872
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->requestLayout()V

    .line 874
    .end local v1    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2417
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 729
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 730
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 731
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2230
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2231
    const/4 v0, 0x0

    .line 2233
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2234
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2236
    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 2260
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2261
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2237
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2239
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2240
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2242
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2243
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2244
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2245
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2246
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2248
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2250
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2251
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2253
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2254
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2255
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2256
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2257
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2258
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    nop

    .line 2264
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2266
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2268
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 716
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 717
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 718
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2429
    const/4 v0, 0x0

    .line 2430
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 2431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2436
    :pswitch_0
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2437
    goto :goto_0

    .line 2433
    :pswitch_1
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2434
    goto :goto_0

    .line 2439
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2440
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2441
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2442
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2447
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2659
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2674
    new-instance v0, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2664
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 604
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 605
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    iget v1, v1, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->childIndex:I

    .line 606
    .local v1, "result":I
    return v1
.end method

.method public getCurrent()Ljava/lang/Object;
    .locals 2

    .line 1295
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1296
    .local v0, "itemInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 685
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1320
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1321
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1324
    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1322
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1326
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1310
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1311
    .local v1, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1312
    return-object v1

    .line 1309
    .end local v1    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .line 1330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 1332
    .local v1, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1333
    return-object v1

    .line 1330
    .end local v1    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1336
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1341
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    .line 1343
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 352
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 353
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 2272
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2275
    iget v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_5

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2277
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2279
    .local v2, "width":I
    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2280
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2281
    .local v4, "itemIndex":I
    iget-object v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 2282
    .local v5, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 2284
    .local v6, "offset":F
    iget-object v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2285
    .local v7, "itemCount":I
    iget v8, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 2286
    .local v8, "firstPos":I
    iget-object v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    iget v9, v9, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 2287
    .local v9, "lastPos":I
    move v10, v6

    move v6, v4

    move v4, v8

    .local v4, "pos":I
    .local v6, "itemIndex":I
    .local v10, "offset":F
    :goto_0
    if-ge v4, v9, :cond_5

    .line 2288
    :goto_1
    iget v11, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-le v4, v11, :cond_0

    if-ge v6, v7, :cond_0

    .line 2289
    iget-object v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_1

    .line 2294
    :cond_0
    iget v11, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ne v4, v11, :cond_1

    .line 2295
    iget v11, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    .line 2296
    .local v11, "itemOffset":F
    iget v12, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v12, "widthFactor":F
    goto :goto_2

    .line 2298
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    :cond_1
    move v11, v10

    .line 2299
    .restart local v11    # "itemOffset":F
    iget-object v12, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v12, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2303
    .restart local v12    # "widthFactor":F
    :goto_2
    int-to-float v13, v2

    mul-float/2addr v13, v11

    .line 2304
    .local v13, "scaledOffset":F
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2305
    const/high16 v14, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v14, v13

    .local v14, "left":F
    goto :goto_3

    .line 2307
    .end local v14    # "left":F
    :cond_2
    int-to-float v14, v2

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    .line 2310
    .restart local v14    # "left":F
    :goto_3
    add-float v15, v11, v12

    add-float v10, v15, v3

    .line 2312
    iget v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    move/from16 v16, v3

    int-to-float v3, v1

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    cmpl-float v3, v15, v3

    if-lez v3, :cond_3

    .line 2313
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v15, v14

    move-object/from16 v17, v5

    iget v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mTopPageBounds:I

    .end local v5    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v17, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    move/from16 v18, v6

    iget v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    .end local v6    # "itemIndex":I
    .local v18, "itemIndex":I
    int-to-float v6, v6

    add-float/2addr v6, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v6, v6, v19

    float-to-int v6, v6

    move/from16 v20, v7

    iget v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mBottomPageBounds:I

    .end local v7    # "itemCount":I
    .local v20, "itemCount":I
    invoke-virtual {v3, v15, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2315
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 2318
    .end local v17    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v20    # "itemCount":I
    .restart local v5    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v6    # "itemIndex":I
    .restart local v7    # "itemCount":I
    :cond_3
    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v20, v7

    move-object/from16 v5, p1

    .end local v5    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v6    # "itemIndex":I
    .end local v7    # "itemCount":I
    .restart local v17    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v18    # "itemIndex":I
    .restart local v20    # "itemCount":I
    :goto_4
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v14, v3

    if-lez v3, :cond_4

    .line 2319
    goto :goto_5

    .line 2287
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    .end local v13    # "scaledOffset":F
    .end local v14    # "left":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v20

    goto :goto_0

    .line 2323
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "pos":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "offset":F
    .end local v16    # "marginOffset":F
    .end local v17    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v20    # "itemCount":I
    :cond_5
    move-object/from16 v5, p1

    :goto_5
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2680
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2682
    const-class v0, Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2683
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2685
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2686
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2687
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2688
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2690
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2694
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2696
    const-class v0, Lcom/oneplus/lib/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2697
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2699
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 2700
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 2702
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2706
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2707
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 2709
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2712
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v6, p0

    .line 1792
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 1795
    .local v8, "action":I
    const/4 v0, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x3

    if-eq v8, v1, :cond_f

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto/16 :goto_3

    .line 1810
    :cond_0
    if-eqz v8, :cond_2

    .line 1811
    iget-boolean v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1813
    return v10

    .line 1815
    :cond_1
    iget-boolean v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    .line 1817
    return v9

    .line 1821
    :cond_2
    const/4 v1, 0x2

    if-eqz v8, :cond_b

    if-eq v8, v1, :cond_4

    const/4 v0, 0x6

    if-eq v8, v0, :cond_3

    goto/16 :goto_2

    .line 1912
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1832
    :cond_4
    iget v11, v6, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 1833
    .local v11, "activePointerId":I
    if-ne v11, v0, :cond_5

    .line 1835
    goto/16 :goto_2

    .line 1838
    :cond_5
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1839
    .local v12, "pointerIndex":I
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 1840
    .local v13, "x":F
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 1841
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1842
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1843
    .local v5, "y":F
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1846
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Lcom/oneplus/lib/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    .line 1847
    move-object v0, v6

    move/from16 v18, v1

    move-object v1, v6

    move v9, v5

    move/from16 v5, v18

    .end local v5    # "y":F
    .local v9, "y":F
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1849
    iput v13, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 1850
    iput v9, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    .line 1851
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1852
    const/4 v0, 0x0

    return v0

    .line 1854
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_6
    move v9, v5

    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_7
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, v15

    cmpl-float v0, v0, v16

    if-lez v0, :cond_9

    .line 1856
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 1857
    invoke-direct {v6, v10}, Lcom/oneplus/lib/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1858
    invoke-direct {v6, v10}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    .line 1859
    cmpl-float v0, v14, v17

    if-lez v0, :cond_8

    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1860
    :cond_8
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 1861
    iput v9, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    .line 1862
    invoke-direct {v6, v10}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1863
    :cond_9
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_a

    .line 1869
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1871
    :cond_a
    :goto_1
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 1873
    invoke-direct {v6, v13}, Lcom/oneplus/lib/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->postInvalidateOnAnimation()V

    goto :goto_2

    .line 1885
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 1886
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    .line 1887
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v6, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 1888
    iput-boolean v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1890
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1891
    iget v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_c

    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1892
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 1894
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1895
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 1896
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 1897
    iput-boolean v10, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 1898
    invoke-direct {v6, v10}, Lcom/oneplus/lib/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1899
    invoke-direct {v6, v10}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    goto :goto_2

    .line 1901
    :cond_c
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/oneplus/lib/widget/ViewPager;->completeScroll(Z)V

    .line 1902
    iput-boolean v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 1908
    nop

    .line 1916
    :cond_d
    :goto_2
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 1917
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1919
    :cond_e
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1925
    iget-boolean v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1798
    :cond_f
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 1799
    iput-boolean v1, v6, Lcom/oneplus/lib/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1800
    iput v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 1801
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 1802
    iget-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1803
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1805
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    move-object/from16 v0, p0

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1482
    .local v1, "count":I
    sub-int v4, p4, p2

    .line 1483
    .local v4, "width":I
    sub-int v7, p5, p3

    .line 1484
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v8

    .line 1485
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v9

    .line 1486
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v10

    .line 1487
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingBottom()I

    move-result v11

    .line 1488
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v12

    .line 1490
    .local v12, "scrollX":I
    const/4 v13, 0x0

    .line 1494
    .local v13, "decorCount":I
    move v15, v13

    move v13, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "paddingLeft":I
    .local v11, "paddingTop":I
    .local v13, "paddingBottom":I
    .local v15, "decorCount":I
    :goto_0
    if-ge v8, v1, :cond_7

    .line 1495
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1496
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_6

    .line 1497
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1498
    .local v2, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    const/4 v3, 0x0

    .line 1499
    .local v3, "childLeft":I
    const/16 v16, 0x0

    .line 1500
    .local v16, "childTop":I
    move/from16 v17, v3

    iget-boolean v3, v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    .end local v3    # "childLeft":I
    .local v17, "childLeft":I
    if-eqz v3, :cond_6

    .line 1501
    iget v3, v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v3, v3, 0x7

    .line 1502
    .local v3, "hgrav":I
    iget v5, v2, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x70

    .line 1503
    .local v5, "vgrav":I
    move-object/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .local v18, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    if-eq v3, v2, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    .line 1505
    move v2, v9

    .line 1506
    .end local v17    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_1

    .line 1516
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_0
    sub-int v2, v4, v10

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v2, v2, v19

    .line 1517
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v10, v10, v17

    goto :goto_1

    .line 1508
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_1
    move v2, v9

    .line 1509
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v9, v9, v17

    .line 1510
    goto :goto_1

    .line 1512
    .end local v2    # "childLeft":I
    .restart local v17    # "childLeft":I
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1514
    .end local v17    # "childLeft":I
    .restart local v2    # "childLeft":I
    nop

    .line 1520
    :goto_1
    move/from16 v20, v3

    .end local v3    # "hgrav":I
    .local v20, "hgrav":I
    const/16 v3, 0x10

    if-eq v5, v3, :cond_5

    const/16 v3, 0x30

    if-eq v5, v3, :cond_4

    const/16 v3, 0x50

    if-eq v5, v3, :cond_3

    .line 1522
    move v3, v11

    .line 1523
    .end local v16    # "childTop":I
    .local v3, "childTop":I
    goto :goto_2

    .line 1533
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_3
    sub-int v3, v7, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v3, v3, v17

    .line 1534
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    goto :goto_2

    .line 1525
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_4
    move v3, v11

    .line 1526
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v11, v11, v16

    .line 1527
    goto :goto_2

    .line 1529
    .end local v3    # "childTop":I
    .restart local v16    # "childTop":I
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1531
    .end local v16    # "childTop":I
    .restart local v3    # "childTop":I
    nop

    .line 1537
    :goto_2
    add-int/2addr v2, v12

    .line 1538
    nop

    .line 1539
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v21, v5

    add-int v5, v2, v16

    .line 1540
    .end local v5    # "vgrav":I
    .local v21, "vgrav":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v6, v3, v16

    .line 1538
    invoke-virtual {v14, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1541
    add-int/lit8 v15, v15, 0x1

    .line 1494
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v14    # "child":Landroid/view/View;
    .end local v18    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v20    # "hgrav":I
    .end local v21    # "vgrav":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1546
    .end local v8    # "i":I
    :cond_7
    sub-int v2, v4, v9

    sub-int/2addr v2, v10

    .line 1548
    .local v2, "childWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_d

    .line 1549
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1550
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v8, 0x8

    if-ne v6, v8, :cond_8

    .line 1551
    nop

    .line 1548
    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .end local v5    # "child":Landroid/view/View;
    .local v22, "count":I
    .local v23, "width":I
    .local v25, "childWidth":I
    :goto_4
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v23, v4

    goto :goto_7

    .line 1554
    .end local v22    # "count":I
    .end local v23    # "width":I
    .end local v25    # "childWidth":I
    .restart local v1    # "count":I
    .restart local v2    # "childWidth":I
    .restart local v4    # "width":I
    .restart local v5    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1555
    .local v6, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v14, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_9

    .line 1556
    goto :goto_4

    .line 1559
    :cond_9
    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1560
    .local v14, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-nez v14, :cond_a

    .line 1561
    goto :goto_4

    .line 1564
    :cond_a
    iget-boolean v8, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v8, :cond_b

    .line 1567
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1568
    int-to-float v8, v2

    move/from16 v22, v1

    iget v1, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->widthFactor:F

    .end local v1    # "count":I
    .restart local v22    # "count":I
    mul-float/2addr v8, v1

    float-to-int v1, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1571
    .local v1, "widthSpec":I
    sub-int v16, v7, v11

    move/from16 v23, v4

    sub-int v4, v16, v13

    .end local v4    # "width":I
    .restart local v23    # "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1574
    .local v4, "heightSpec":I
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .end local v1    # "widthSpec":I
    .end local v4    # "heightSpec":I
    goto :goto_5

    .line 1577
    .end local v22    # "count":I
    .end local v23    # "width":I
    .local v1, "count":I
    .local v4, "width":I
    :cond_b
    move/from16 v22, v1

    move/from16 v23, v4

    .end local v1    # "count":I
    .end local v4    # "width":I
    .restart local v22    # "count":I
    .restart local v23    # "width":I
    :goto_5
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1578
    .local v1, "childMeasuredWidth":I
    int-to-float v4, v2

    iget v8, v14, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 1580
    .local v4, "startOffset":I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1581
    const/high16 v8, 0x1000000

    sub-int/2addr v8, v10

    sub-int/2addr v8, v4

    sub-int/2addr v8, v1

    .local v8, "childLeft":I
    goto :goto_6

    .line 1583
    .end local v8    # "childLeft":I
    :cond_c
    add-int v8, v9, v4

    .line 1586
    .restart local v8    # "childLeft":I
    :goto_6
    move/from16 v24, v11

    .line 1587
    .local v24, "childTop":I
    move/from16 v25, v2

    add-int v2, v8, v1

    .line 1588
    .end local v2    # "childWidth":I
    .restart local v25    # "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v26, v1

    move/from16 v27, v4

    move/from16 v1, v24

    add-int v4, v1, v16

    .line 1587
    .end local v4    # "startOffset":I
    .end local v24    # "childTop":I
    .local v1, "childTop":I
    .local v26, "childMeasuredWidth":I
    .local v27, "startOffset":I
    invoke-virtual {v5, v8, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 1548
    .end local v1    # "childTop":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v8    # "childLeft":I
    .end local v14    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v26    # "childMeasuredWidth":I
    .end local v27    # "startOffset":I
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    move/from16 v4, v23

    move/from16 v2, v25

    goto/16 :goto_3

    .line 1591
    .end local v3    # "i":I
    .end local v22    # "count":I
    .end local v23    # "width":I
    .end local v25    # "childWidth":I
    .local v1, "count":I
    .restart local v2    # "childWidth":I
    .local v4, "width":I
    :cond_d
    move/from16 v22, v1

    move/from16 v25, v2

    move/from16 v23, v4

    .end local v1    # "count":I
    .end local v2    # "childWidth":I
    .end local v4    # "width":I
    .restart local v22    # "count":I
    .restart local v23    # "width":I
    .restart local v25    # "childWidth":I
    iput v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mTopPageBounds:I

    .line 1592
    sub-int v1, v7, v13

    iput v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mBottomPageBounds:I

    .line 1593
    iput v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mDecorChildCount:I

    .line 1595
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_e

    .line 1596
    iget v1, v0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/oneplus/lib/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_8

    .line 1598
    :cond_e
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    .line 1599
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 1352
    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1353
    move/from16 v4, p2

    invoke-static {v1, v4}, Lcom/oneplus/lib/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1352
    invoke-virtual {v0, v3, v5}, Lcom/oneplus/lib/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1356
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1357
    .local v5, "maxGutterSize":I
    iget v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mGutterSize:I

    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1361
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1368
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1369
    .local v8, "size":I
    move v9, v7

    move v7, v6

    move v6, v1

    .local v6, "i":I
    .local v7, "childWidthSize":I
    .local v9, "childHeightSize":I
    :goto_0
    const/16 v10, 0x8

    if-ge v6, v8, :cond_b

    .line 1370
    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1371
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_9

    .line 1372
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1373
    .local v10, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_9

    iget-boolean v13, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_9

    .line 1374
    iget v13, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1375
    .local v13, "hgrav":I
    iget v14, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1376
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1377
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1378
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_1

    const/16 v1, 0x50

    if-ne v14, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1379
    .local v1, "consumeVertical":Z
    :goto_2
    const/4 v11, 0x3

    if-eq v13, v11, :cond_3

    const/4 v11, 0x5

    if-ne v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v17, 0x1

    :goto_4
    move/from16 v11, v17

    .line 1381
    .local v11, "consumeHorizontal":Z
    if-eqz v1, :cond_4

    .line 1382
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_5

    .line 1383
    :cond_4
    if-eqz v11, :cond_5

    .line 1384
    const/high16 v16, 0x40000000    # 2.0f

    .line 1387
    :cond_5
    :goto_5
    move/from16 v17, v7

    .line 1388
    .local v17, "widthSize":I
    move/from16 v18, v9

    .line 1389
    .local v18, "heightSize":I
    iget v2, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_6

    .line 1390
    const/high16 v15, 0x40000000    # 2.0f

    .line 1391
    iget v2, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1392
    iget v2, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_6

    .line 1395
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_6
    move/from16 v2, v17

    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_6
    iget v3, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_7

    .line 1396
    const/high16 v16, 0x40000000    # 2.0f

    .line 1397
    iget v3, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1398
    iget v3, v10, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    .line 1401
    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    move/from16 v4, v16

    goto :goto_7

    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_7
    move/from16 v4, v16

    move/from16 v3, v18

    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .restart local v3    # "heightSize":I
    .local v4, "heightMode":I
    :goto_7
    move/from16 v20, v5

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1402
    .local v5, "widthSpec":I
    .local v20, "maxGutterSize":I
    move/from16 v21, v2

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1403
    .local v2, "heightSpec":I
    .local v21, "widthSize":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1405
    if-eqz v1, :cond_8

    .line 1406
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v9, v9, v16

    goto :goto_8

    .line 1407
    :cond_8
    if-eqz v11, :cond_a

    .line 1408
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v7, v7, v16

    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v3    # "heightSize":I
    .end local v4    # "heightMode":I
    .end local v5    # "widthSpec":I
    .end local v10    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v11    # "consumeHorizontal":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v21    # "widthSize":I
    goto :goto_8

    .line 1369
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_9
    move/from16 v19, v3

    move/from16 v20, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move/from16 v5, v20

    const/4 v1, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    goto/16 :goto_0

    .line 1414
    .end local v6    # "i":I
    .end local v19    # "measuredWidth":I
    .end local v20    # "maxGutterSize":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_b
    move/from16 v19, v3

    move/from16 v20, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    .restart local v20    # "maxGutterSize":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1415
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1418
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mInLayout:Z

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 1420
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mInLayout:Z

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v3

    .line 1424
    .end local v8    # "size":I
    .local v3, "size":I
    nop

    .local v2, "i":I
    :goto_9
    if-ge v2, v3, :cond_e

    .line 1425
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1426
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_d

    .line 1430
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1431
    .local v5, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    if-eqz v5, :cond_c

    iget-boolean v6, v5, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_d

    .line 1432
    :cond_c
    int-to-float v6, v7

    iget v8, v5, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1434
    .local v6, "widthSpec":I
    iget v8, v0, Lcom/oneplus/lib/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v6, v8}, Landroid/view/View;->measure(II)V

    .line 1424
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v6    # "widthSpec":I
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1438
    .end local v2    # "i":I
    :cond_e
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 18
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1678
    move/from16 v3, p3

    iget v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mDecorChildCount:I

    const/4 v6, 0x1

    if-lez v4, :cond_5

    .line 1679
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 1680
    .local v4, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v7

    .line 1681
    .local v7, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v8

    .line 1682
    .local v8, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v9

    .line 1683
    .local v9, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v10

    .line 1684
    .local v10, "childCount":I
    move v11, v8

    move v8, v7

    const/4 v7, 0x0

    .local v7, "i":I
    .local v8, "paddingLeft":I
    .local v11, "paddingRight":I
    :goto_0
    if-ge v7, v10, :cond_5

    .line 1685
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1686
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1687
    .local v13, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v14, v13, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v14, :cond_0

    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    goto :goto_2

    .line 1689
    .restart local v12    # "child":Landroid/view/View;
    .restart local v13    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    :cond_0
    iget v14, v13, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1690
    .local v14, "hgrav":I
    const/4 v15, 0x0

    .line 1691
    .local v15, "childLeft":I
    if-eq v14, v6, :cond_3

    const/4 v5, 0x3

    if-eq v14, v5, :cond_2

    const/4 v5, 0x5

    if-eq v14, v5, :cond_1

    .line 1693
    move v5, v8

    .line 1694
    .end local v15    # "childLeft":I
    .local v5, "childLeft":I
    goto :goto_1

    .line 1704
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_1
    sub-int v5, v9, v11

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v5, v5, v17

    .line 1705
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_1

    .line 1696
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_2
    move v5, v8

    .line 1697
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v8, v15

    .line 1698
    goto :goto_1

    .line 1700
    .end local v5    # "childLeft":I
    .restart local v15    # "childLeft":I
    :cond_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1702
    .end local v15    # "childLeft":I
    .restart local v5    # "childLeft":I
    nop

    .line 1708
    :goto_1
    add-int/2addr v5, v4

    .line 1710
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v5, v15

    .line 1711
    .local v15, "childOffset":I
    if-eqz v15, :cond_4

    .line 1712
    invoke-virtual {v12, v15}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1684
    .end local v5    # "childLeft":I
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v14    # "hgrav":I
    .end local v15    # "childOffset":I
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1717
    .end local v4    # "scrollX":I
    .end local v7    # "i":I
    .end local v8    # "paddingLeft":I
    .end local v9    # "width":I
    .end local v10    # "childCount":I
    .end local v11    # "paddingRight":I
    :cond_5
    iget-object v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_6

    .line 1718
    iget-object v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1720
    :cond_6
    iget-object v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_7

    .line 1721
    iget-object v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1724
    :cond_7
    iget-object v4, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    if-eqz v4, :cond_9

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 1726
    .restart local v4    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v5

    .line 1727
    .local v5, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v7, v16

    .end local v16    # "i":I
    .restart local v7    # "i":I
    if-ge v7, v5, :cond_9

    .line 1728
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1729
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1731
    .local v9, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_8

    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    goto :goto_4

    .line 1733
    .restart local v8    # "child":Landroid/view/View;
    .restart local v9    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1734
    .local v10, "transformPos":F
    iget-object v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    invoke-interface {v11, v8, v10}, Lcom/oneplus/lib/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1727
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v10    # "transformPos":F
    :goto_4
    add-int/lit8 v16, v7, 0x1

    .end local v7    # "i":I
    .restart local v16    # "i":I
    goto :goto_3

    .line 1738
    .end local v4    # "scrollX":I
    .end local v5    # "childCount":I
    .end local v16    # "i":I
    :cond_9
    iput-boolean v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mCalledSuper:Z

    .line 1739
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2633
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2634
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2635
    const/4 v1, 0x0

    .line 2636
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2637
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 2639
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2640
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2641
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2643
    .restart local v3    # "end":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2644
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2645
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2646
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2647
    .local v6, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2648
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2649
    const/4 v7, 0x1

    return v7

    .line 2643
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    .line 2654
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1250
    instance-of v0, p1, Lcom/oneplus/lib/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1252
    return-void

    .line 1255
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;

    .line 1256
    .local v0, "ss":Lcom/oneplus/lib/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1258
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1260
    iget v1, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_0

    .line 1262
    :cond_1
    iget v1, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredCurItem:I

    .line 1263
    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1264
    iget-object v1, v0, Lcom/oneplus/lib/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1266
    :goto_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 2552
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2554
    if-nez p1, :cond_0

    .line 2555
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    .line 2557
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    .line 2559
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1239
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1240
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1241
    .local v1, "ss":Lcom/oneplus/lib/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    iput v2, v1, Lcom/oneplus/lib/widget/ViewPager$SavedState;->position:I

    .line 1242
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1243
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1245
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1445
    if-eq p1, p3, :cond_0

    .line 1446
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/oneplus/lib/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1448
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 1930
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1933
    return v3

    .line 1936
    :cond_0
    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1941
    :cond_1
    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 1942
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1944
    :cond_2
    iget-object v2, v0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1946
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1947
    .local v2, "action":I
    const/4 v4, 0x0

    .line 1949
    .local v4, "needsInvalidate":Z
    and-int/lit16 v5, v2, 0xff

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2045
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2046
    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 2038
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2039
    .local v3, "index":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2040
    .local v5, "x":F
    iput v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 2041
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 2042
    goto/16 :goto_2

    .line 2028
    .end local v3    # "index":I
    .end local v5    # "x":F
    :pswitch_3
    iget-boolean v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_6

    .line 2029
    iget v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v5, v7, v3, v3}, Lcom/oneplus/lib/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2030
    iput v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 2031
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->endDrag()V

    .line 2032
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2033
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2034
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1962
    :pswitch_4
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 1963
    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1964
    .local v3, "pointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1965
    .restart local v5    # "x":F
    iget v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1966
    .local v6, "xDiff":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1967
    .local v8, "y":F
    iget v9, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1969
    .local v9, "yDiff":F
    iget v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_4

    cmpl-float v10, v6, v9

    if-lez v10, :cond_4

    .line 1971
    iput-boolean v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    .line 1972
    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1973
    iget v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    sub-float v10, v5, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    iget v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    .line 1974
    :cond_3
    iget v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Lcom/oneplus/lib/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    iput v10, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 1975
    iput v8, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    .line 1976
    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    .line 1977
    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1980
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 1981
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_4

    .line 1982
    invoke-interface {v10, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1987
    .end local v3    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_4
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 1989
    iget v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1990
    .local v3, "activePointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1991
    .restart local v5    # "x":F
    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/ViewPager;->performDrag(F)Z

    move-result v6

    or-int/2addr v4, v6

    .line 1992
    .end local v3    # "activePointerIndex":I
    .end local v5    # "x":F
    goto/16 :goto_2

    .line 1995
    :pswitch_5
    iget-boolean v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 1996
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1997
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v8, v0, Lcom/oneplus/lib/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1998
    iget v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v5, v5

    .line 2000
    .local v5, "initialVelocity":I
    iput-boolean v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollStart()I

    move-result v8

    int-to-float v8, v8

    .line 2003
    .local v8, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    .line 2004
    .local v9, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->infoForFirstVisiblePage()Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 2005
    .local v10, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .line 2007
    .local v11, "currentPage":I
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2008
    iget v12, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v9

    iget v13, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .local v12, "nextPageOffset":F
    goto :goto_1

    .line 2010
    .end local v12    # "nextPageOffset":F
    :cond_5
    iget v12, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->offset:F

    sub-float v12, v9, v12

    iget v13, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .line 2013
    .restart local v12    # "nextPageOffset":F
    :goto_1
    iget v13, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2014
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2015
    .local v14, "x":F
    iget v15, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2016
    .local v15, "totalDelta":I
    invoke-direct {v0, v11, v12, v5, v15}, Lcom/oneplus/lib/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v6

    .line 2018
    .local v6, "nextPage":I
    invoke-virtual {v0, v6, v7, v7, v5}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2020
    const/4 v7, -0x1

    iput v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 2021
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->endDrag()V

    .line 2022
    iget-object v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2023
    iget-object v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2024
    const/4 v4, 0x1

    .line 2025
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "initialVelocity":I
    .end local v6    # "nextPage":I
    .end local v8    # "scrollStart":F
    .end local v9    # "scrolledPages":F
    .end local v10    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v11    # "currentPage":I
    .end local v12    # "nextPageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_2

    .line 1951
    :pswitch_6
    iget-object v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1952
    iput-boolean v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 1953
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 1956
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionX:F

    iput v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionX:F

    .line 1957
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mInitialMotionY:F

    iput v5, v0, Lcom/oneplus/lib/widget/ViewPager;->mLastMotionY:F

    .line 1958
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mActivePointerId:I

    .line 1959
    nop

    .line 2049
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2052
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 1938
    .end local v2    # "action":I
    .end local v4    # "needsInvalidate":Z
    :cond_8
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 3

    .line 2543
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method pageRight()Z
    .locals 3

    .line 2547
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 2716
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2717
    return v1

    .line 2720
    :cond_0
    const/16 v0, 0x1000

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const v0, 0x1020039

    if-eq p1, v0, :cond_1

    const v0, 0x102003b

    if-eq p1, v0, :cond_3

    .line 2737
    return v2

    .line 2730
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2731
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItem(I)V

    .line 2732
    return v1

    .line 2734
    :cond_2
    return v2

    .line 2723
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2724
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItem(I)V

    .line 2725
    return v1

    .line 2727
    :cond_4
    return v2
.end method

.method public populate()V
    .locals 1

    .line 877
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->populate(I)V

    .line 878
    return-void
.end method

.method populate(I)V
    .locals 23
    .param p1, "newCurrentItem"    # I

    move-object/from16 v1, p0

    .line 881
    move/from16 v2, p1

    const/4 v0, 0x0

    .line 882
    .local v0, "oldCurInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    const/4 v3, 0x2

    .line 883
    .local v3, "focusDirection":I
    iget v4, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-eq v4, v2, :cond_1

    .line 884
    iget v4, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ge v4, v2, :cond_0

    const/16 v4, 0x42

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    :goto_0
    move v3, v4

    .line 885
    iget v4, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/widget/ViewPager;->infoForPosition(I)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 886
    iput v2, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    .line 889
    .end local v0    # "oldCurInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v4, "focusDirection":I
    :cond_1
    move v4, v3

    move-object v3, v0

    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_2

    .line 890
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->sortChildDrawingOrder()V

    .line 891
    return-void

    .line 898
    :cond_2
    iget-boolean v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_3

    .line 900
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->sortChildDrawingOrder()V

    .line 901
    return-void

    .line 907
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 908
    return-void

    .line 911
    :cond_4
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 913
    iget v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    .line 914
    .local v5, "pageLimit":I
    iget v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v5

    const/4 v6, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 915
    .local v7, "startPos":I
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 916
    .local v8, "N":I
    add-int/lit8 v0, v8, -0x1

    iget v9, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/2addr v9, v5

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 918
    .local v9, "endPos":I
    iget v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v8, v0, :cond_27

    .line 934
    const/4 v0, -0x1

    .line 935
    .local v0, "curIndex":I
    const/4 v10, 0x0

    .line 936
    .local v10, "curItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_1
    iget-object v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_6

    .line 937
    iget-object v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 938
    .local v11, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v12, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-lt v12, v13, :cond_5

    .line 939
    iget v12, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_6

    move-object v10, v11

    goto :goto_2

    .line 936
    .end local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 944
    :cond_6
    :goto_2
    if-nez v10, :cond_7

    if-lez v8, :cond_7

    .line 945
    iget v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v11, v0}, Lcom/oneplus/lib/widget/ViewPager;->addNewItem(II)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 951
    :cond_7
    if-eqz v10, :cond_1d

    .line 952
    const/4 v13, 0x0

    .line 953
    .local v13, "extraWidthLeft":F
    add-int/lit8 v14, v0, -0x1

    .line 954
    .local v14, "itemIndex":I
    if-ltz v14, :cond_8

    iget-object v15, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    .line 955
    .local v15, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    .line 956
    .local v6, "clientWidth":I
    const/high16 v17, 0x40000000    # 2.0f

    if-gtz v6, :cond_9

    .line 957
    move/from16 v19, v0

    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    iget v12, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v12, v17, v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    move/from16 v19, v0

    int-to-float v0, v6

    .end local v0    # "curIndex":I
    .local v19, "curIndex":I
    div-float/2addr v11, v0

    add-float/2addr v11, v12

    :goto_4
    move v0, v11

    .line 958
    .local v0, "leftWidthNeeded":F
    iget v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v12, v19

    .end local v19    # "curIndex":I
    .local v11, "pos":I
    .local v12, "curIndex":I
    :goto_5
    if-ltz v11, :cond_11

    .line 959
    cmpl-float v19, v13, v0

    if-ltz v19, :cond_c

    if-ge v11, v7, :cond_c

    .line 960
    if-nez v15, :cond_a

    .line 961
    nop

    .line 986
    move/from16 v20, v0

    goto/16 :goto_a

    .line 963
    :cond_a
    move/from16 v20, v0

    iget v0, v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .end local v0    # "leftWidthNeeded":F
    .local v20, "leftWidthNeeded":F
    if-ne v11, v0, :cond_10

    iget-boolean v0, v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v0, :cond_10

    .line 964
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 965
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 970
    add-int/lit8 v14, v14, -0x1

    .line 971
    add-int/lit8 v12, v12, -0x1

    .line 972
    if-ltz v14, :cond_b

    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    goto :goto_7

    .line 974
    .end local v20    # "leftWidthNeeded":F
    .restart local v0    # "leftWidthNeeded":F
    :cond_c
    move/from16 v20, v0

    .end local v0    # "leftWidthNeeded":F
    .restart local v20    # "leftWidthNeeded":F
    if-eqz v15, :cond_e

    iget v0, v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v0, :cond_e

    .line 975
    iget v0, v15, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v0

    .line 976
    add-int/lit8 v14, v14, -0x1

    .line 977
    if-ltz v14, :cond_d

    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .end local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v0, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_7
    goto :goto_9

    .line 979
    .end local v0    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_e
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v1, v11, v0}, Lcom/oneplus/lib/widget/ViewPager;->addNewItem(II)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 980
    .end local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v0    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget v2, v0, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v2

    .line 981
    add-int/lit8 v12, v12, 0x1

    .line 982
    if-ltz v14, :cond_f

    iget-object v2, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    move-object v0, v2

    .line 958
    .end local v0    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_9
    move-object v15, v0

    :cond_10
    add-int/lit8 v11, v11, -0x1

    move/from16 v0, v20

    move/from16 v2, p1

    goto :goto_5

    .line 986
    .end local v11    # "pos":I
    .end local v20    # "leftWidthNeeded":F
    .local v0, "leftWidthNeeded":F
    :cond_11
    move/from16 v20, v0

    .end local v0    # "leftWidthNeeded":F
    .restart local v20    # "leftWidthNeeded":F
    :goto_a
    iget v0, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 987
    .local v0, "extraWidthRight":F
    add-int/lit8 v2, v12, 0x1

    .line 988
    .end local v14    # "itemIndex":I
    .local v2, "itemIndex":I
    cmpg-float v11, v0, v17

    if-gez v11, :cond_1c

    .line 989
    iget-object v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_12

    iget-object v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    .line 990
    .end local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v11, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_b
    if-gtz v6, :cond_13

    .line 991
    const/4 v14, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddingRight()I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    add-float v14, v14, v17

    .line 992
    .local v14, "rightWidthNeeded":F
    :goto_c
    iget v15, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_d
    if-ge v15, v8, :cond_1b

    .line 993
    cmpl-float v17, v0, v14

    if-ltz v17, :cond_17

    if-le v15, v9, :cond_17

    .line 994
    if-nez v11, :cond_14

    .line 995
    nop

    .line 1019
    move/from16 v21, v5

    move/from16 v22, v6

    goto/16 :goto_12

    .line 997
    :cond_14
    move/from16 v21, v5

    iget v5, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    .end local v5    # "pageLimit":I
    .local v21, "pageLimit":I
    if-ne v15, v5, :cond_16

    iget-boolean v5, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_16

    .line 998
    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 999
    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v22, v6

    iget-object v6, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .end local v6    # "clientWidth":I
    .local v22, "clientWidth":I
    invoke-virtual {v5, v1, v15, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1004
    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    move-object v11, v5

    goto :goto_11

    .line 992
    .end local v22    # "clientWidth":I
    .restart local v6    # "clientWidth":I
    :cond_16
    move/from16 v22, v6

    .end local v6    # "clientWidth":I
    .restart local v22    # "clientWidth":I
    goto :goto_11

    .line 1006
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "clientWidth":I
    :cond_17
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    if-eqz v11, :cond_19

    iget v5, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v5, :cond_19

    .line 1007
    iget v5, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    .line 1008
    add-int/lit8 v2, v2, 0x1

    .line 1009
    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    iget-object v5, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    :goto_f
    move-object v11, v5

    goto :goto_11

    .line 1011
    :cond_19
    invoke-virtual {v1, v15, v2}, Lcom/oneplus/lib/widget/ViewPager;->addNewItem(II)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1012
    .end local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .local v5, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    add-int/lit8 v2, v2, 0x1

    .line 1013
    iget v6, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v6

    .line 1014
    iget-object v6, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1a

    iget-object v6, v1, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_10
    move-object v11, v6

    .line 992
    .end local v5    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .restart local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :goto_11
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v21

    move/from16 v6, v22

    goto/16 :goto_d

    .line 1019
    .end local v14    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .local v5, "pageLimit":I
    .restart local v6    # "clientWidth":I
    :cond_1b
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    :goto_12
    move-object v15, v11

    goto :goto_13

    .end local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v21    # "pageLimit":I
    .end local v22    # "clientWidth":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "clientWidth":I
    .local v15, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    :cond_1c
    move/from16 v21, v5

    move/from16 v22, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "clientWidth":I
    .restart local v21    # "pageLimit":I
    .restart local v22    # "clientWidth":I
    :goto_13
    invoke-direct {v1, v10, v12, v3}, Lcom/oneplus/lib/widget/ViewPager;->calculatePageOffsets(Lcom/oneplus/lib/widget/ViewPager$ItemInfo;ILcom/oneplus/lib/widget/ViewPager$ItemInfo;)V

    .end local v0    # "extraWidthRight":F
    .end local v2    # "itemIndex":I
    .end local v13    # "extraWidthLeft":F
    .end local v15    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v20    # "leftWidthNeeded":F
    .end local v22    # "clientWidth":I
    goto :goto_14

    .line 1029
    .end local v12    # "curIndex":I
    .end local v21    # "pageLimit":I
    .local v0, "curIndex":I
    .restart local v5    # "pageLimit":I
    :cond_1d
    move/from16 v19, v0

    move/from16 v21, v5

    move/from16 v12, v19

    .end local v0    # "curIndex":I
    .end local v5    # "pageLimit":I
    .restart local v12    # "curIndex":I
    .restart local v21    # "pageLimit":I
    :goto_14
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-eqz v10, :cond_1e

    iget-object v5, v10, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_15

    :cond_1e
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v0, v1, v2, v5}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1031
    iget-object v0, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1036
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 1037
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1038
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 1039
    .local v6, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iput v2, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1040
    iget-boolean v11, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_1f

    iget v11, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-nez v11, :cond_20

    .line 1042
    invoke-virtual {v1, v5}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1043
    .restart local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_20

    .line 1044
    iget v14, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v14, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1045
    iget v14, v11, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iput v14, v6, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->position:I

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v11    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    goto :goto_17

    .line 1036
    :cond_1f
    const/4 v13, 0x0

    :cond_20
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1049
    .end local v2    # "i":I
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1053
    .local v2, "currentFocused":Landroid/view/View;
    if-eqz v2, :cond_22

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v5

    move-object/from16 v18, v5

    goto :goto_18

    :cond_22
    const/16 v18, 0x0

    :goto_18
    move-object/from16 v5, v18

    .line 1054
    .local v5, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    if-eqz v5, :cond_23

    iget v6, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-eq v6, v11, :cond_26

    .line 1055
    :cond_23
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_19
    move/from16 v6, v16

    .end local v16    # "i":I
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_26

    .line 1056
    invoke-virtual {v1, v6}, Lcom/oneplus/lib/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1057
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v1, v11}, Lcom/oneplus/lib/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1058
    if-eqz v5, :cond_25

    iget v13, v5, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget v14, v1, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v13, v14, :cond_25

    .line 1060
    if-nez v2, :cond_24

    .line 1061
    const/4 v13, 0x0

    .local v13, "focusRect":Landroid/graphics/Rect;
    goto :goto_1a

    .line 1063
    .end local v13    # "focusRect":Landroid/graphics/Rect;
    :cond_24
    iget-object v13, v1, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 1064
    .restart local v13    # "focusRect":Landroid/graphics/Rect;
    iget-object v14, v1, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v14}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1065
    iget-object v14, v1, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v14}, Lcom/oneplus/lib/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1066
    iget-object v14, v1, Lcom/oneplus/lib/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v14}, Lcom/oneplus/lib/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1068
    :goto_1a
    invoke-virtual {v11, v4, v13}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 1069
    goto :goto_1b

    .line 1055
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "focusRect":Landroid/graphics/Rect;
    :cond_25
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "i":I
    .restart local v16    # "i":I
    goto :goto_19

    .line 1075
    .end local v2    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v16    # "i":I
    :cond_26
    :goto_1b
    return-void

    .line 921
    .end local v0    # "childCount":I
    .end local v10    # "curItem":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    .end local v12    # "curIndex":I
    .end local v21    # "pageLimit":I
    .local v5, "pageLimit":I
    :cond_27
    move/from16 v21, v5

    .end local v5    # "pageLimit":I
    .restart local v21    # "pageLimit":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .local v0, "resName":Ljava/lang/String;
    goto :goto_1c

    .line 922
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "resName":Ljava/lang/String;
    :goto_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/oneplus/lib/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Pager id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Pager class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Problematic adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 930
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1301
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1304
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1306
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 8
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .line 376
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mObserver:Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 378
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 379
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    .line 381
    .local v2, "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->position:I

    iget-object v5, v2, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 379
    .end local v2    # "ii":Lcom/oneplus/lib/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 384
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ViewPager;->removeNonDecorViews()V

    .line 386
    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    .line 387
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/widget/ViewPager;->scrollTo(II)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 391
    .local v0, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 392
    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mExpectedAdapterCount:I

    .line 394
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_5

    .line 395
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mObserver:Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 396
    new-instance v2, Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/widget/ViewPager$PagerObserver;-><init>(Lcom/oneplus/lib/widget/ViewPager;Lcom/oneplus/lib/widget/ViewPager$1;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mObserver:Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

    .line 398
    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mObserver:Lcom/oneplus/lib/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 399
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 400
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    .line 401
    .local v2, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    .line 402
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mExpectedAdapterCount:I

    .line 403
    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 404
    iget-object v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 405
    iget v5, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v1, v4}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 406
    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredCurItem:I

    .line 407
    iput-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 408
    iput-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 409
    :cond_3
    if-nez v2, :cond_4

    .line 410
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    goto :goto_1

    .line 412
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->requestLayout()V

    .line 416
    .end local v2    # "wasFirstLayout":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapterChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 417
    iget-object v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapterChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 419
    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 458
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 459
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPopulatePending:Z

    .line 469
    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 470
    return-void
.end method

.method setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method setCurrentItemInternal(IZZI)Z
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 481
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p1

    .line 487
    if-nez p3, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 489
    return v1

    .line 492
    :cond_1
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    .line 493
    .local v0, "pageLimit":I
    iget v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v0

    if-gt p1, v3, :cond_2

    iget v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_3

    .line 497
    :cond_2
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 498
    iget-object v4, p0, Lcom/oneplus/lib/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;

    iput-boolean v2, v4, Lcom/oneplus/lib/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_4

    move v1, v2

    nop

    .line 503
    .local v1, "dispatchSelected":Z
    :cond_4
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_7

    .line 506
    iput p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    .line 507
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 508
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 510
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 511
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 513
    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->requestLayout()V

    goto :goto_1

    .line 515
    :cond_7
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ViewPager;->populate(I)V

    .line 516
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/oneplus/lib/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 519
    :goto_1
    return v2

    .line 482
    .end local v0    # "pageLimit":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 483
    return v1
.end method

.method setInternalPageChangeListener(Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;)Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    .line 616
    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    .line 617
    .local v0, "oldListener":Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mInternalPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    .line 618
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .line 650
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 651
    const-string v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 p1, 0x1

    .line 655
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 656
    iput p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mOffscreenPageLimit:I

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 659
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;

    .line 442
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mAdapterChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnAdapterChangeListener;

    .line 443
    return-void
.end method

.method public setOnPageChangeListener(Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    .line 574
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mOnPageChangeListener:Lcom/oneplus/lib/widget/ViewPager$OnPageChangeListener;

    .line 575
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .line 670
    iget v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    .line 671
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    .line 673
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getWidth()I

    move-result v1

    .line 674
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/oneplus/lib/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 676
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->requestLayout()V

    .line 677
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 706
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 694
    iput-object p1, p0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 695
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->refreshDrawableState()V

    .line 696
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/ViewPager;->setWillNotDraw(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->invalidate()V

    .line 698
    return-void
.end method

.method public setPageTransformer(ZLcom/oneplus/lib/widget/ViewPager$PageTransformer;)V
    .locals 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    .line 590
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 591
    .local v2, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    .line 592
    .local v3, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/oneplus/lib/widget/ViewPager;->mPageTransformer:Lcom/oneplus/lib/widget/ViewPager$PageTransformer;

    .line 593
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 594
    if-eqz v2, :cond_4

    .line 595
    if-eqz p1, :cond_3

    const/4 v1, 0x2

    nop

    :cond_3
    iput v1, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrder:I

    goto :goto_3

    .line 597
    :cond_4
    iput v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mDrawingOrder:I

    .line 599
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 600
    :cond_5
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/ViewPager;->smoothScrollTo(III)V

    .line 742
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    move-object/from16 v0, p0

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 754
    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 755
    return-void

    .line 757
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 758
    .local v1, "sx":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getScrollY()I

    move-result v9

    .line 759
    .local v9, "sy":I
    sub-int v10, p1, v1

    .line 760
    .local v10, "dx":I
    sub-int v11, p2, v9

    .line 761
    .local v11, "dy":I
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 762
    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->completeScroll(Z)V

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->populate()V

    .line 764
    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    .line 765
    return-void

    .line 768
    :cond_1
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 769
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/ViewPager;->setScrollState(I)V

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 772
    .local v2, "width":I
    div-int/lit8 v12, v2, 0x2

    .line 773
    .local v12, "halfWidth":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, v2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 774
    .local v13, "distanceRatio":F
    int-to-float v3, v12

    int-to-float v5, v12

    .line 775
    invoke-virtual {v0, v13}, Lcom/oneplus/lib/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v14, v3, v5

    .line 777
    .local v14, "distance":F
    const/4 v3, 0x0

    .line 778
    .local v3, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 779
    .end local p3    # "velocity":I
    .local v8, "velocity":I
    if-lez v8, :cond_2

    .line 780
    const/4 v4, 0x4

    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v8

    div-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/2addr v4, v5

    .end local v3    # "duration":I
    .local v4, "duration":I
    goto :goto_0

    .line 782
    .end local v4    # "duration":I
    .restart local v3    # "duration":I
    :cond_2
    int-to-float v5, v2

    iget-object v6, v0, Lcom/oneplus/lib/widget/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mCurItem:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    mul-float/2addr v5, v6

    .line 783
    .local v5, "pageWidth":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/oneplus/lib/widget/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v6, v7

    .line 784
    .local v6, "pageDelta":F
    add-float/2addr v4, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    .line 786
    .end local v3    # "duration":I
    .end local v5    # "pageWidth":F
    .end local v6    # "pageDelta":F
    .restart local v4    # "duration":I
    :goto_0
    const/16 v3, 0x258

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 788
    .end local v4    # "duration":I
    .local v15, "duration":I
    iget-object v3, v0, Lcom/oneplus/lib/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v4, v1

    move v5, v9

    move v6, v10

    move v7, v11

    move/from16 v16, v8

    move v8, v15

    .end local v8    # "velocity":I
    .local v16, "velocity":I
    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 790
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 711
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
