.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private final mMinimumTouchTarget:I

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    new-instance v0, Landroid/widget/FastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    new-instance v0, Landroid/widget/FastScroller$4;

    const-string/jumbo v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-instance v0, Landroid/widget/FastScroller$5;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-instance v0, Landroid/widget/FastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/FastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    iput v0, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/FastScroller$2;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$2;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    iput v1, p0, Landroid/widget/FastScroller;->mState:I

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    invoke-virtual {p0, p2}, Landroid/widget/FastScroller;->setStyle(I)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    iget v2, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    iget v3, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->updateLongList(II)V

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/FastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 8

    sget-object v0, Landroid/widget/FastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v2, Landroid/widget/FastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v3, Landroid/widget/FastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v5, Landroid/widget/FastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private beginDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    return-void
.end method

.method private cancelFling()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    iget-object v5, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_10

    if-nez v3, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v6, 0x0

    if-eqz v4, :cond_3

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    if-eqz v7, :cond_e

    iget-boolean v8, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v8, :cond_4

    goto/16 :goto_8

    :cond_4
    iget v8, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v1, v8

    if-gez v1, :cond_5

    return v5

    :cond_5
    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    sub-int/2addr v3, v5

    iget-object v5, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v6, 0x0

    :goto_2
    nop

    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    iget-object v10, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v10

    add-int/lit8 v11, v10, -0x1

    if-ge v8, v11, :cond_9

    add-int/lit8 v11, v8, 0x1

    if-ge v11, v10, :cond_8

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v4, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    goto :goto_3

    :cond_8
    add-int/lit8 v11, v3, -0x1

    :goto_3
    sub-int/2addr v11, v9

    goto :goto_4

    :cond_9
    sub-int v11, v3, v9

    :goto_4
    if-nez v11, :cond_a

    const/4 v12, 0x0

    goto :goto_5

    :cond_a
    int-to-float v12, v1

    add-float/2addr v12, v6

    int-to-float v13, v9

    sub-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    :goto_5
    int-to-float v13, v8

    add-float/2addr v13, v12

    int-to-float v14, v10

    div-float/2addr v13, v14

    if-lez v1, :cond_d

    add-int v14, v1, v2

    if-ne v14, v3, :cond_d

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    iget-object v15, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v15

    move/from16 v16, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    move/from16 v17, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v1, v1, v18

    move/from16 v0, v17

    goto :goto_6

    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v15

    move/from16 v19, v1

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v1, v1, v17

    move/from16 v0, v19

    :goto_6
    if-lez v1, :cond_c

    if-lez v0, :cond_c

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v13

    move/from16 v20, v3

    int-to-float v3, v1

    move/from16 v21, v1

    int-to-float v1, v0

    div-float/2addr v3, v1

    mul-float v17, v17, v3

    add-float v13, v13, v17

    goto :goto_7

    :cond_c
    move/from16 v20, v3

    goto :goto_7

    :cond_d
    move/from16 v16, v1

    move/from16 v20, v3

    :goto_7
    return v13

    :cond_e
    :goto_8
    if-ne v2, v3, :cond_f

    return v5

    :cond_f
    int-to-float v0, v1

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v0, v5

    return v0

    :cond_10
    :goto_9
    return v5
.end method

.method private getPosFromMotionEvent(F)F
    .locals 3

    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float v0, p1, v0

    iget v2, p0, Landroid/widget/FastScroller;->mThumbRange:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mHeaderCount:I

    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    iput-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x0

    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/FastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPointInsideX(F)Z
    .locals 8

    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    move v4, v3

    nop

    :cond_0
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    move v6, v7

    nop

    :cond_1
    return v6

    :cond_2
    iget-object v5, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    move v6, v7

    nop

    :cond_3
    return v6
.end method

.method private isPointInsideY(F)Z
    .locals 6

    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Landroid/widget/FastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    nop

    :cond_0
    sub-float v5, v1, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    add-float v5, v2, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private layoutThumb()V
    .locals 3

    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 13

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    iget v7, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v9, v7

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    add-int v11, v10, v9

    invoke-virtual {v0, v10, v8, v11, v7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    move/from16 v17, v1

    add-int v1, v0, v13

    move/from16 v18, v2

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/FastScroller;->mTempMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/FastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/FastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v6, v0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-nez p2, :cond_1

    move v8, v7

    :goto_1
    goto :goto_2

    :cond_1
    iget-boolean v8, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v8, v7, v8

    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v11, v8, v3

    sub-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v10

    move-object/from16 v13, p1

    invoke-virtual {v13, v12, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-boolean v15, v0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    if-nez p2, :cond_3

    iget v15, v6, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    :goto_3
    sub-int/2addr v15, v5

    sub-int v16, v15, v14

    :goto_4
    move/from16 v0, v16

    goto :goto_6

    :cond_4
    if-nez p2, :cond_5

    iget v15, v6, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    :goto_5
    add-int v16, v15, v3

    add-int v15, v16, v14

    goto :goto_4

    :goto_6
    move/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v1, v17

    add-int v2, v1, v16

    move/from16 v18, v3

    move-object/from16 v3, p4

    invoke-virtual {v3, v0, v1, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->stop()V

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    return-void
.end method

.method private postAutoHide()V
    .locals 4

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    iget-object v2, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    iget-object v3, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    array-length v4, v3

    :goto_0
    if-eqz v3, :cond_a

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    move v6, v5

    iget-object v7, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v8, v6

    move v9, v2

    move v10, v7

    move v11, v6

    add-int/lit8 v12, v6, 0x1

    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_1

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_4

    :cond_2
    if-lez v6, :cond_4

    add-int/lit8 v6, v6, -0x1

    iget-object v13, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    if-eq v10, v7, :cond_3

    move v11, v6

    move v8, v6

    goto :goto_1

    :cond_3
    if-nez v6, :cond_2

    const/4 v8, 0x0

    nop

    :cond_4
    :goto_1
    add-int/lit8 v13, v12, 0x1

    :goto_2
    if-ge v13, v4, :cond_5

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    int-to-float v14, v11

    int-to-float v1, v4

    div-float/2addr v14, v1

    int-to-float v1, v12

    move-object v15, v3

    int-to-float v3, v4

    div-float/2addr v1, v3

    if-nez v2, :cond_6

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v16, v4

    goto :goto_3

    :cond_6
    const/high16 v3, 0x3e000000    # 0.125f

    move/from16 v16, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    :goto_3
    if-ne v11, v5, :cond_7

    sub-float v4, p1, v14

    cmpg-float v4, v4, v3

    if-gez v4, :cond_7

    move v4, v10

    goto :goto_4

    :cond_7
    sub-int v4, v9, v10

    int-to-float v4, v4

    sub-float v17, p1, v14

    mul-float v4, v4, v17

    sub-float v17, v1, v14

    div-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v4, v10

    :goto_4
    add-int/lit8 v7, v2, -0x1

    move/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v4, v1, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableListView;

    iget v7, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v7, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_5

    :cond_8
    move/from16 v19, v5

    move/from16 v20, v6

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v5, v4

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    :cond_9
    iget-object v1, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v5, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_5
    goto :goto_7

    :cond_a
    move-object v15, v3

    move/from16 v16, v4

    int-to-float v1, v2

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_b

    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ExpandableListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-static {v4}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_b
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_c

    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v3, Landroid/widget/ListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    :cond_c
    iget-object v3, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v4, v0, Landroid/widget/FastScroller;->mHeaderCount:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    :goto_6
    nop

    const/4 v8, -0x1

    :goto_7
    move v1, v8

    iget v3, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    if-eq v3, v1, :cond_e

    iput v1, v0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {v0, v1}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v3

    iget-boolean v4, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_8

    :cond_d
    iget-boolean v4, v0, Landroid/widget/FastScroller;->mShowingPreview:Z

    if-eqz v4, :cond_e

    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    :cond_e
    :goto_8
    return-void
.end method

.method private setState(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/widget/FastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToDragging()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToVisible()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/widget/FastScroller;->transitionToHidden()V

    nop

    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 12

    iget v0, p0, Landroid/widget/FastScroller;->mThumbRange:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget v3, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_0

    :pswitch_0
    sub-float v3, v0, v2

    goto :goto_0

    :pswitch_1
    move v3, v0

    nop

    :goto_0
    nop

    iget-object v4, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v5

    add-float/2addr v7, v2

    int-to-float v8, v6

    sub-float/2addr v8, v2

    invoke-static {v3, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    sub-float v10, v9, v2

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v11, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v11, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/FastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, v0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    iget-boolean v6, v0, Landroid/widget/FastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-direct {v0, v7, v4}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v6, v12}, Landroid/widget/FastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    iget-object v11, v0, Landroid/widget/FastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v4}, Landroid/widget/FastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    iget-object v14, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    if-le v12, v15, :cond_3

    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleX(F)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object/from16 v17, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    :cond_3
    move-object/from16 v17, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v12, :cond_4

    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    invoke-static {v6, v2}, Landroid/widget/FastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v18, v1

    move/from16 v19, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_4
    move/from16 v18, v1

    :goto_2
    iget-object v1, v0, Landroid/widget/FastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private transitionToDragging()V
    .locals 10

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v3, v7, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 10

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    :goto_1
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v6, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v9, v8, v5

    invoke-static {v7, v3, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v4, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToVisible()V
    .locals 12

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v8, v7, [Landroid/view/View;

    iget-object v9, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v6

    iget-object v9, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v2

    const/4 v9, 0x0

    invoke-static {v1, v9, v8}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v10, 0x12c

    invoke-virtual {v1, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v2, [Landroid/view/View;

    iget-object v11, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v11, v10, v5

    iget-object v11, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Landroid/widget/FastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v1, v7, v6

    aput-object v3, v7, v2

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v5, p0, Landroid/widget/FastScroller;->mShowingPreview:Z

    return-void
.end method

.method private updateAppearance()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/FastScroller;->mWidth:I

    iget v1, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v1, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget v1, p0, Landroid/widget/FastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/widget/FastScroller;->mTextSize:F

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget v1, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v1, p0, Landroid/widget/FastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/FastScroller;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int v1, p2, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-eq v2, v1, :cond_1

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    :cond_1
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 5

    iget-object v0, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    :goto_0
    move v2, v4

    iput v3, p0, Landroid/widget/FastScroller;->mThumbOffset:F

    sub-float v4, v2, v3

    iput v4, p0, Landroid/widget/FastScroller;->mThumbRange:F

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/FastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    iget v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    invoke-direct {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 3

    iget v0, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    :cond_0
    iput p2, p0, Landroid/widget/FastScroller;->mOldItemCount:I

    iput p1, p0, Landroid/widget/FastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setThumbPos(F)V

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(III)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    return-void

    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/FastScroller;->setThumbPos(F)V

    :cond_2
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    iget v3, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_3

    iput p1, p0, Landroid/widget/FastScroller;->mFirstVisibleItem:I

    iget v3, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v3, v1, :cond_3

    invoke-direct {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    :cond_3
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    :pswitch_1
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    iget-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_2
    return v5

    :pswitch_2
    iget-wide v6, p0, Landroid/widget/FastScroller;->mPendingDrag:J

    cmp-long v0, v6, v3

    if-ltz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setThumbPos(F)V

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_3
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    :cond_4
    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->setState(I)V

    invoke-direct {p0}, Landroid/widget/FastScroller;->postAutoHide()V

    return v5

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Landroid/widget/FastScroller;->beginDrag()V

    return v5

    :cond_5
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/FastScroller;->mEnabled:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    iget v0, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/FastScroller;->mScrollBarStyle:I

    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move p1, v1

    :cond_1
    iget v1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    iput p1, p0, Landroid/widget/FastScroller;->mScrollbarPosition:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    iget-object v0, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    iget-boolean v2, p0, Landroid/widget/FastScroller;->mLayoutFromRight:Z

    aget v0, v0, v2

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v2, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget v3, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    iget-object v3, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 9

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbMinWidth:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbMinHeight:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    goto :goto_1

    :pswitch_5
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    goto :goto_1

    :pswitch_6
    iget-object v6, p0, Landroid/widget/FastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mThumbPosition:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewMinHeight:I

    goto :goto_1

    :pswitch_9
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewMinWidth:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mPreviewPadding:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/FastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_c
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/FastScroller;->mTextSize:F

    goto :goto_1

    :pswitch_d
    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mTextAppearance:I

    nop

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/FastScroller;->updateAppearance()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    iget-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    invoke-direct {p0}, Landroid/widget/FastScroller;->updateContainerRect()V

    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutThumb()V

    invoke-direct {p0}, Landroid/widget/FastScroller;->layoutTrack()V

    invoke-direct {p0}, Landroid/widget/FastScroller;->updateOffsetAndRange()V

    iget-object v0, p0, Landroid/widget/FastScroller;->mTempBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/widget/FastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/FastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/FastScroller;->mUpdatingLayout:Z

    return-void
.end method
