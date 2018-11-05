.class public Lcom/oneplus/lib/widget/OPTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;,
        Lcom/oneplus/lib/widget/OPTabLayout$TabView;,
        Lcom/oneplus/lib/widget/OPTabLayout$Tab;,
        Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;,
        Lcom/oneplus/lib/widget/OPTabLayout$TabGravity;,
        Lcom/oneplus/lib/widget/OPTabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

.field private mContentInsetStart:I

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mMode:I

.field private mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mScrollAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabHorizontalSpacing:I

.field private mTabMaxWidth:I

.field private mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/OPTabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPTabLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setFillViewport(Z)V

    new-instance v2, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->addView(Landroid/view/View;II)V

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout:[I

    sget v3, Lcom/oneplus/commonctrl/R$style;->Oneplus_Widget_Design_OPTabLayout:I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorHeight:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabIndicatorColor:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextAppearance:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Oneplus_TextAppearance_Design_Tab:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPadding:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingStart:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingTop:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingEnd:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabPaddingBottom:I

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabSelectedTextColor:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4, v3}, Lcom/oneplus/lib/widget/OPTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMinWidth:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMaxWidth:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabBackground:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabContentStart:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_horizontalSpacing:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabMode:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTabLayout_op_tabGravity:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/OPTabLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/OPTabLayout;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextAppearance:I

    return v0
.end method

.method private addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->fast_out_slow_in_interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/oneplus/lib/widget/OPTabLayout$2;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/widget/OPTabLayout$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/16 v3, 0x12c

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyModeAndGravity()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mContentInsetStart:I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setPaddingRelative(IIII)V

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setGravity(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsLayoutParams()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    nop

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    return v4

    :cond_3
    return v1
.end method

.method private configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V
    .locals 3

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v1, v2

    aput p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/oneplus/lib/widget/OPTabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    aput p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabHorizontalSpacing:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout$TabView;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/lib/widget/OPTabLayout$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/OPTabLayout$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private dpToPx(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getDefaultMaxWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private loadTextColorFromTextAppearance(I)Landroid/content/res/ColorStateList;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private removeTabViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->removeViewAt(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewsMargin()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAllTabs()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTab(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method

.method private updateTabViewsLayoutParams()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewsMargin()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPTabLayout;->addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->addTabView(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->configureTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;-><init>(Lcom/oneplus/lib/widget/OPTabLayout;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->tab_layout_default_height_material:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    nop

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-le v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v4, v5}, Lcom/oneplus/lib/widget/OPTabLayout;->getChildMeasureSpec(III)I

    move-result v4

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_2
    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mRequestedTabMaxWidth:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getMeasuredWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->getDefaultMaxWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v1, :cond_3

    if-le v1, v2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    if-eq v3, v1, :cond_5

    iput v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMaxWidth:I

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public removeAllTabs()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->removeAllViews()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-void
.end method

.method public removeTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 2

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->access$000(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)Lcom/oneplus/lib/widget/OPTabLayout;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->removeTabAt(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this OPTabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->removeTabViewAt(I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, p1

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->setPosition(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V

    return-void
.end method

.method selectTab(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabReselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v0, :cond_4

    :cond_3
    if-eq v1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->animateToTab(I)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabUnselected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_6
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mSelectedTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-interface {v0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;->onTabSelected(Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mOnTabSelectedListener:Lcom/oneplus/lib/widget/OPTabLayout$OnTabSelectedListener;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->scrollTo(II)V

    if-eqz p3, :cond_2

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setSelectedTabView(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabStrip:Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabGravity:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabMinWidth:I

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mMode:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method
