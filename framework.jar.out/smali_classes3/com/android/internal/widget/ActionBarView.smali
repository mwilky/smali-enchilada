.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private final mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private final mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private final mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private final mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const v1, 0x1040049

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    new-instance v1, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual {v11, v12, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/16 v4, 0x10

    const v5, 0x109001a

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const v5, 0x109001d

    invoke-virtual {v3, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v13, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_0

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v5, v14}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v2, v14, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/16 v5, 0xe

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/16 v5, 0xf

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    const/16 v5, 0x11

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v3, v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v6, 0x0

    const v7, 0x102002c

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v4, v1

    move-object/from16 v16, v5

    move-object v5, v11

    move/from16 v17, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    :goto_0
    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1040048

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v2, v8, v5

    aput-object v0, v8, v4

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1040047

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v0, v4, v5

    invoke-virtual {v3, v7, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_3
    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    :goto_0
    return-void
.end method

.method private initTitle()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x109001c

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020184

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020183

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020395

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initProgress()V
    .locals 5

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020396

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public isSplit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32

    move-object/from16 v6, p0

    sub-int v0, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int v10, v0, v1

    if-gtz v10, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move v13, v0

    if-eqz v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    :cond_2
    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    move v14, v0

    if-eqz v11, :cond_3

    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v0

    :goto_2
    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v15

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    :goto_3
    move-object v4, v0

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget v0, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    move/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v0

    goto :goto_5

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v0

    :cond_7
    :goto_5
    move v2, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-static {v5, v2, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v17

    move-object v0, v6

    move v12, v2

    move/from16 v2, v17

    move v7, v3

    move v3, v15

    move-object/from16 v17, v4

    move v4, v10

    move/from16 v19, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v5, v19, v0

    invoke-static {v5, v12, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_a

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_a

    if-eqz v16, :cond_8

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    :cond_8
    move/from16 v19, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object v0, v6

    move/from16 v2, v19

    move v3, v15

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v19, v0

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    goto :goto_6

    :pswitch_1
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    if-eqz v16, :cond_9

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    :cond_9
    move/from16 v19, v0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object v0, v6

    move/from16 v2, v19

    move v3, v15

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int v0, v19, v0

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v0, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v0

    goto :goto_6

    :pswitch_2
    nop

    :cond_a
    :goto_6
    move v5, v0

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, v6, :cond_b

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v19, v11, 0x1

    move-object v0, v6

    move v2, v14

    move v3, v15

    move v4, v10

    move/from16 v20, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v13

    add-int/2addr v14, v0

    goto :goto_7

    :cond_b
    move/from16 v20, v5

    :goto_7
    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_c

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    xor-int/lit8 v5, v11, 0x1

    move-object v0, v6

    move v2, v14

    move v3, v15

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, v13

    add-int/2addr v14, v0

    :cond_c
    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    const/16 v2, 0x10

    if-eqz v1, :cond_d

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_8

    :cond_d
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v0, v6, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    :cond_e
    :goto_8
    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/app/ActionBar$LayoutParams;

    if-eqz v4, :cond_f

    move-object v4, v3

    check-cast v4, Landroid/app/ActionBar$LayoutParams;

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_10

    iget v5, v4, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_a

    :cond_10
    const v5, 0x800013

    :goto_a
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    const/16 v19, 0x0

    const/16 v21, 0x0

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v2

    move-object/from16 v22, v3

    move/from16 v3, v20

    invoke-static {v3, v2, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v2

    invoke-virtual {v4}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int/2addr v3, v13

    add-int/2addr v14, v3

    iget v3, v4, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v23, v2

    iget v2, v4, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v19, v3

    move/from16 v3, v23

    goto :goto_b

    :cond_11
    move-object/from16 v22, v3

    move/from16 v3, v20

    move/from16 v2, v21

    :goto_b
    const v20, 0x800007

    move-object/from16 v24, v4

    and-int v4, v5, v20

    const/4 v8, 0x1

    if-ne v4, v8, :cond_17

    iget v8, v6, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move/from16 v25, v4

    iget v4, v6, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    if-eqz v11, :cond_14

    add-int v4, v8, v7

    move/from16 v26, v8

    if-le v4, v3, :cond_12

    const/16 v20, 0x5

    move/from16 v25, v20

    goto :goto_c

    :cond_12
    move/from16 v27, v4

    move/from16 v4, v26

    if-ge v4, v14, :cond_13

    const/4 v4, 0x3

    move/from16 v25, v4

    :cond_13
    :goto_c
    goto :goto_d

    :cond_14
    move v4, v8

    add-int v9, v8, v7

    if-ge v4, v3, :cond_15

    const/16 v20, 0x3

    move/from16 v4, v20

    goto :goto_e

    :cond_15
    if-le v9, v14, :cond_16

    const/4 v4, 0x5

    goto :goto_e

    :cond_16
    :goto_d
    move/from16 v4, v25

    :goto_e
    goto :goto_f

    :cond_17
    move/from16 v25, v4

    if-nez v5, :cond_18

    const v4, 0x800003

    goto :goto_f

    :cond_18
    move/from16 v4, v25

    :goto_f
    const/4 v8, 0x0

    invoke-static {v4, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v9

    move/from16 v28, v1

    const/4 v1, 0x1

    if-eq v9, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v9, v1, :cond_1b

    const/4 v1, 0x5

    if-eq v9, v1, :cond_19

    goto :goto_12

    :cond_19
    if-eqz v11, :cond_1a

    sub-int v1, v3, v7

    goto :goto_10

    :cond_1a
    sub-int v1, v14, v7

    :goto_10
    move v8, v1

    goto :goto_12

    :cond_1b
    if-eqz v11, :cond_1c

    move v1, v14

    goto :goto_11

    :cond_1c
    move v1, v3

    :goto_11
    move v8, v1

    goto :goto_12

    :cond_1d
    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mRight:I

    iget v9, v6, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v7

    div-int/lit8 v8, v1, 0x2

    nop

    :goto_12
    and-int/lit8 v1, v5, 0x70

    if-nez v5, :cond_1e

    const/16 v1, 0x10

    :cond_1e
    const/4 v9, 0x0

    move/from16 v29, v4

    const/16 v4, 0x10

    if-eq v1, v4, :cond_21

    const/16 v4, 0x30

    if-eq v1, v4, :cond_20

    const/16 v4, 0x50

    if-eq v1, v4, :cond_1f

    :goto_13
    move/from16 v30, v1

    move/from16 v31, v2

    goto :goto_14

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v18

    sub-int v4, v4, v18

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v4, v4, v18

    sub-int v9, v4, v2

    goto :goto_13

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    add-int v9, v4, v19

    goto :goto_13

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    move/from16 v30, v1

    iget v1, v6, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move/from16 v31, v2

    iget v2, v6, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v2, v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v2, v2, v18

    div-int/lit8 v9, v2, 0x2

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v2, v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v9

    invoke-virtual {v0, v8, v9, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {v3, v1, v11}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move v3, v5

    goto :goto_15

    :cond_22
    move/from16 v3, v20

    :goto_15
    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_23

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->bringToFront()V

    iget-object v1, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v4, v6, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v5, v1

    iget v7, v6, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v8, v6, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v7, v1}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_1

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-ne v6, v7, :cond_0

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v7}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v6, v5

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_4

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v3, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    return-void

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_27

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v7, -0x80000000

    if-ne v6, v7, :cond_26

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-ltz v9, :cond_6

    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    goto :goto_2

    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v12

    sub-int v13, v9, v10

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    sub-int v16, v8, v11

    sub-int v4, v16, v12

    div-int/lit8 v16, v4, 0x2

    move/from16 v17, v16

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-eq v5, v3, :cond_7

    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_4

    :cond_8
    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move/from16 v18, v2

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_9

    const/high16 v2, -0x80000000

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v20, v3

    goto :goto_5

    :cond_9
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v20, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    :goto_5
    move/from16 v2, v19

    invoke-virtual {v7, v2, v15}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    const/4 v3, 0x0

    move/from16 v21, v2

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_b

    :cond_a
    if-eqz v5, :cond_c

    :cond_b
    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v2

    add-int/2addr v2, v3

    move/from16 v23, v3

    sub-int v3, v4, v2

    move/from16 v24, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v25, v6

    sub-int v6, v3, v2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v22, v23

    goto :goto_6

    :cond_c
    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v3, v24

    :goto_6
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_d

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v15, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    :cond_d
    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_e

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v14, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v17, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    :cond_e
    move/from16 v2, v17

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v4, :cond_11

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_11

    if-eqz v5, :cond_f

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_7

    :cond_f
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    :goto_7
    sub-int v6, v3, v4

    move-object/from16 v26, v7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v6, v16, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move/from16 v27, v4

    move/from16 v28, v11

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move/from16 v29, v12

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v13, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v7, v11, v12}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    sub-int v7, v3, v4

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v7, v6, v4

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_a

    :pswitch_1
    move-object/from16 v26, v7

    move/from16 v28, v11

    move/from16 v29, v12

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_12

    if-eqz v5, :cond_10

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_8

    :cond_10
    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    :goto_8
    sub-int v6, v3, v4

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v6, v16, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v11, -0x80000000

    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move/from16 v30, v4

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v13, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v7, v12, v4}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    sub-int v7, v3, v4

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v7, v6, v4

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto :goto_a

    :cond_11
    :goto_9
    move-object/from16 v26, v7

    move/from16 v28, v11

    move/from16 v29, v12

    :cond_12
    :goto_a
    move/from16 v4, v16

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v7, :cond_13

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    goto :goto_b

    :cond_13
    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_14

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_14

    iget-object v6, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    :cond_14
    :goto_b
    if-eqz v6, :cond_1f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v11, v7, Landroid/app/ActionBar$LayoutParams;

    if-eqz v11, :cond_15

    move-object v11, v7

    check-cast v11, Landroid/app/ActionBar$LayoutParams;

    goto :goto_c

    :cond_15
    const/4 v11, 0x0

    :goto_c
    const/4 v12, 0x0

    const/16 v16, 0x0

    if-eqz v11, :cond_16

    move/from16 v31, v5

    iget v5, v11, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v32, v12

    iget v12, v11, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v12, v5

    iget v5, v11, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v33, v12

    iget v12, v11, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int v16, v5, v12

    move/from16 v32, v33

    goto :goto_d

    :cond_16
    move/from16 v31, v5

    move/from16 v32, v12

    :goto_d
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    const/4 v12, -0x2

    if-gtz v5, :cond_17

    const/high16 v5, -0x80000000

    goto :goto_e

    :cond_17
    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v12, :cond_18

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_e

    :cond_18
    const/high16 v5, -0x80000000

    :goto_e
    nop

    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v12, :cond_19

    iget v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_f

    :cond_19
    move v12, v13

    :goto_f
    sub-int v12, v12, v16

    move/from16 v34, v13

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v35, v14

    const/4 v14, -0x2

    if-eq v13, v14, :cond_1a

    const/high16 v13, 0x40000000    # 2.0f

    goto :goto_10

    :cond_1a
    const/high16 v13, -0x80000000

    :goto_10
    nop

    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_1b

    iget v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_11

    :cond_1b
    move v14, v3

    :goto_11
    sub-int v14, v14, v32

    move/from16 v36, v15

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    if-eqz v11, :cond_1c

    iget v15, v11, Landroid/app/ActionBar$LayoutParams;->gravity:I

    goto :goto_12

    :cond_1c
    const v15, 0x800013

    :goto_12
    and-int/lit8 v15, v15, 0x7

    move-object/from16 v37, v11

    const/4 v11, 0x1

    if-ne v15, v11, :cond_1d

    iget v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v38, v7

    const/4 v7, -0x1

    if-ne v11, v7, :cond_1e

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/lit8 v14, v7, 0x2

    goto :goto_13

    :cond_1d
    move-object/from16 v38, v7

    :cond_1e
    :goto_13
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v12, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v6, v7, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v7, v32, v7

    sub-int/2addr v3, v7

    goto :goto_14

    :cond_1f
    move/from16 v31, v5

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    :goto_14
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    add-int v7, v3, v22

    iget v11, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v7, v11, v12}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_20

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_20
    iget v5, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v5, :cond_23

    const/4 v5, 0x0

    nop

    :goto_15
    move v7, v12

    if-ge v7, v1, :cond_22

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v10

    if-le v12, v5, :cond_21

    move v5, v12

    :cond_21
    add-int/lit8 v12, v7, 0x1

    goto :goto_15

    :cond_22
    invoke-virtual {v0, v8, v5}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_16

    :cond_23
    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    :goto_16
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    :cond_24
    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_25

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_25

    iget-object v5, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    iget v7, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v8, v7

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v5, v7, v11}, Landroid/widget/ProgressBar;->measure(II)V

    :cond_25
    return-void

    :cond_26
    move/from16 v18, v2

    move/from16 v25, v6

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move/from16 v18, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_0
    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    return-object v1
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v1, p1, v0

    :goto_0
    move v0, v1

    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v0, 0x3f

    if-eqz v1, :cond_11

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    :cond_2
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    if-nez v1, :cond_a

    if-eqz v4, :cond_a

    move v5, v3

    goto :goto_7

    :cond_a
    move v5, v2

    :goto_7
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    if-nez v1, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_c

    move v6, v2

    goto :goto_8

    :cond_c
    const/16 v6, 0x8

    :goto_8
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_e

    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_9

    :cond_d
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_e
    :goto_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_10

    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_10

    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_f

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_a

    :cond_f
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_10
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    goto :goto_b

    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    :goto_b
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    :cond_2
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/ActionMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v2, 0x1020188

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    new-instance v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    :cond_1
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    if-eq p1, v0, :cond_4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102d7

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v2, 0x1020182

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v3, 0x10102f4

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    nop

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->requestLayout()V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    :cond_8
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
