.class public Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;,
        Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;,
        Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;

.field mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/view/ViewPropertyAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarTabBarStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performCollapse()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private performExpand()Z
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setTabSelected(I)V

    return v1
.end method


# virtual methods
.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;IZ)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createTabView(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public addTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->createTabView(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$1;-><init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateToVisibility(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisibilityAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, v2, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mVisAnimListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v0, v2, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/view/ViewPropertyAnimator;I)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method createTabView(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;
    .locals 4

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;-><init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabClickListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabClickListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabClickListener:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->select()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-le v5, v2, :cond_3

    if-eq v0, v3, :cond_1

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_3

    :cond_1
    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    div-int/2addr v7, v6

    iput v7, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_1
    iget v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v7, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_2
    iget v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v4, :cond_4

    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-le v1, v3, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->performCollapse()V

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->performExpand()Z

    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    if-eqz v4, :cond_7

    if-eq v1, v3, :cond_7

    iget v6, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_7
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->animateToTab(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;->update()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method
