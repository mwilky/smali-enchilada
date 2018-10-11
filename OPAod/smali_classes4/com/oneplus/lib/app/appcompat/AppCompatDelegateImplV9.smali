.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$Callback;
.implements Landroid/support/v4/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
    }
.end annotation


# instance fields
.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mAppCompatViewInflater:Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

.field private mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/view/ViewPropertyAnimator;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$1;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setDecorPadding(IIII)V

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->requestLayout()V

    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowNoTitle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    goto :goto_0

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    :cond_1
    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    const/4 v7, 0x0

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v6, :cond_4

    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_dialog_title_material:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup;

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    goto/16 :goto_4

    :cond_4
    iget-boolean v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v6, :cond_d

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_5

    new-instance v3, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v9, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v8, v9}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    :goto_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_toolbar:I

    invoke-virtual {v8, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/view/ViewGroup;

    sget v8, Lcom/oneplus/commonctrl/R$id;->decor_content_parent:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iput-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v8, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    :cond_6
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v8, 0x2

    invoke-interface {v4, v8}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    :cond_7
    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v8, 0x5

    invoke-interface {v4, v8}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->initFeature(I)V

    :cond_8
    goto :goto_4

    :cond_9
    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v3, :cond_a

    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :goto_2
    move-object v5, v3

    goto :goto_3

    :cond_a
    sget v3, Lcom/oneplus/commonctrl/R$layout;->op_abc_screen_simple:I

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_2

    :goto_3
    sget v3, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_c

    new-instance v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$2;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$2;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_4

    :cond_c
    move-object v3, v5

    check-cast v3, Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup;

    new-instance v4, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$3;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-interface {v3, v4}, Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Lcom/oneplus/lib/app/appcompat/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    :cond_d
    :goto_4
    if-eqz v5, :cond_11

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-nez v3, :cond_e

    sget v3, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    :cond_e
    invoke-static {v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    sget v3, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    const v6, 0x1020002

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_10

    :goto_5
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v3, v8}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_f
    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setId(I)V

    instance-of v2, v4, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_10

    move-object v2, v4

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$4;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$4;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setAttachListener(Lcom/oneplus/lib/app/appcompat/ContentFrameLayout$OnAttachListener;)V

    return-object v5

    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowActionBarOverlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", android:windowIsFloating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowActionModeOverlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowNoTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureSubDecor()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    :cond_2
    return-void
.end method

.method private initializePanelContent(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 4

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    return v1

    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iput-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    iget-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private initializePanelDecor(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    :cond_0
    const/16 v0, 0x51

    iput v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v5, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_2
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    new-instance v5, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v5

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_4
    new-instance v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return v2
.end method

.method private invalidatePanelMenu(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    or-int/2addr v0, v2

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->showOverflowMenu()Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->hideOverflowMenu()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v2, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_4

    iput-boolean v1, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_4
    if-eqz v2, :cond_6

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    :goto_0
    iget-boolean v0, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2

    :cond_7
    const-string v1, "AppCompatDelegate"

    const-string v4, "Couldn\'t get audio manager"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    return v0
.end method

.method private openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v5, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v2, v5, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v1, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    return-void

    :cond_4
    iget-object v5, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    if-nez v5, :cond_5

    return-void

    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_6

    return-void

    :cond_6
    const/4 v6, -0x2

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    iget-boolean v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v7, :cond_10

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_10

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_10

    const/4 v6, -0x1

    goto :goto_3

    :cond_8
    :goto_2
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v7, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelDecor(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v7, :cond_b

    :cond_9
    return-void

    :cond_a
    iget-boolean v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_b

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelContent(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    :cond_c
    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_d

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v7, v8

    :cond_d
    iget v8, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    iget-object v9, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v9, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_e

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_e

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_e
    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v11, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_f

    iget-object v10, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    :cond_f
    nop

    :cond_10
    :goto_3
    iput-boolean v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x2

    iget v14, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    iget v15, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v16, 0x3ea

    const/high16 v17, 0x820000

    const/16 v18, -0x3

    move-object v11, v3

    move v12, v6

    invoke-direct/range {v11 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v7, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v5, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    return-void

    :cond_11
    :goto_4
    return-void

    :cond_12
    :goto_5
    return-void
.end method

.method private performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/oneplus/lib/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_3
    return v0
.end method

.method private preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    :cond_3
    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenuPrepared()V

    :cond_6
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v4

    instance-of v4, v4, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    if-nez v4, :cond_15

    :cond_7
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_f

    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v4, :cond_a

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->initializePanelMenu(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v4, :cond_b

    new-instance v4, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v4, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    :cond_b
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v4, v6, v7}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    :cond_c
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {p1, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    :cond_d
    return v1

    :cond_e
    iput-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    :cond_f
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Lcom/oneplus/lib/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    iput-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_10
    iget-object v4, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    if-eqz v3, :cond_11

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v2, v5, v4}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    :cond_11
    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    goto :goto_2

    :cond_13
    const/4 v4, -0x1

    :goto_2
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v5

    if-eq v5, v2, :cond_14

    move v5, v2

    goto :goto_3

    :cond_14
    move v5, v1

    :goto_3
    iput-boolean v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    iget-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/menu/MenuBuilder;->setQwertyMode(Z)V

    iget-object v5, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuBuilder;->startDispatchingItemsChanged()V

    :cond_15
    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    iput-boolean v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    return v2
.end method

.method private reopenMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v3}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v3}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->hideOverflowMenu()Z

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_3
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v2, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->showOverflowMenu()Z

    :cond_4
    nop

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->openPanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6c

    return v0

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x6d

    return v0

    :cond_1
    return p1
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    if-eq p1, v1, :cond_3

    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method callOnPanelClosed(ILcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method checkCloseActionMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->dismissPopups()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    return-void
.end method

.method closePanel(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    return-void
.end method

.method closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->checkCloseActionMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v2, p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->callOnPanelClosed(ILcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    iput-object v1, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v2, p1, :cond_2

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    :cond_2
    return-void
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 14
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-ge v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatViewInflater:Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;

    if-nez v4, :cond_1

    new-instance v4, Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;

    invoke-direct {v4}, Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;-><init>()V

    iput-object v4, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatViewInflater:Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;

    :cond_1
    if-eqz v1, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/view/ViewParent;

    invoke-direct {v0, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_1
    iget-object v4, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatViewInflater:Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;

    const/4 v11, 0x1

    invoke-static {}, Lcom/oneplus/lib/app/appcompat/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v12

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v10, v1

    invoke-virtual/range {v4 .. v12}, Lcom/oneplus/lib/app/appcompat/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method dismissPopups()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->dismissPopups()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close()V

    :cond_3
    return-void
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3
.end method

.method doInvalidatePanelMenu(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    :cond_0
    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v3, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->clear()V

    :cond_1
    iput-boolean v0, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    iput-boolean v0, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-boolean v0, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    nop

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v1, v0

    if-eqz v0, :cond_0

    array-length v0, v1

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move-object v1, v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPanels:[Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    :cond_2
    aget-object v0, v1, p1

    if-nez v0, :cond_3

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {v2, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    move-object v0, v2

    aput-object v2, v1, p1

    :cond_3
    return-object v0
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    return v0

    :sswitch_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    return v0

    :sswitch_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    return v0

    :sswitch_2
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    return v0

    :sswitch_3
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    return v0

    :sswitch_4
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureProgress:Z

    return v0

    :sswitch_5
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public installViewFactory()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    return-void
.end method

.method onBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->collapseActionView()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->applyDayNight()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplBase;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onDestroy()V

    :cond_1
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_3
    return v2
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v1, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mPreparedPanel:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->preparePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-direct {p0, v2, v4, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->performPanelShortcut(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v4

    iput-boolean v3, v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    invoke-virtual {p0, v2, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public onMenuItemSelected(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuModeChange(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->reopenMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getPanelState(IZ)Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    iget-boolean v2, v1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->closePanel(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setShowHideAnimationEnabled(Z)V

    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->peekSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    return v2

    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mHasActionBar:Z

    return v2

    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    return v2

    :sswitch_3
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    return v2

    :sswitch_4
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFeatureProgress:Z

    return v2

    :sswitch_5
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0xa -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->ensureSubDecor()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public setSupportActionBar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContentFrameLayout:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->setSupportToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mDecorContentParent:Lcom/oneplus/lib/app/appcompat/DecorContentParent;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->onDestroy()V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionBar:Lcom/oneplus/lib/app/appcompat/ActionBar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->invalidateOptionsMenu()V

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final shouldAnimateActionModeView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 4
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    :cond_0
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getSupportActionBar()Lcom/oneplus/lib/app/appcompat/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBar;->startActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v2, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatCallback;->onSupportActionModeStarted(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startSupportActionModeFromWindow(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;
    .locals 10
    .param p1    # Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->finish()V

    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)V

    move-object p1, v0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    invoke-interface {v1, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatCallback;->onWindowStartingSupportActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;)Lcom/oneplus/lib/app/appcompat/ActionMode;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    goto/16 :goto_5

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v1, :cond_6

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$attr;->actionBarTheme:I

    invoke-virtual {v5, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v7, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v3}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    :goto_1
    move-object v6, v7

    new-instance v7, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-direct {v7, v6}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    new-instance v7, Landroid/widget/PopupWindow;

    sget v8, Lcom/oneplus/commonctrl/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v7, v6, v2, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_5

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    :cond_5
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x10102eb

    invoke-virtual {v7, v8, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v7

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setContentHeight(I)V

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v8, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;

    invoke-direct {v8, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$5;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    iput-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    sget v5, Lcom/oneplus/commonctrl/R$id;->action_mode_bar_stub:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iput-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->killMode()V

    new-instance v1, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v5}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    invoke-direct {v1, v5, v6, p1, v4}, Lcom/oneplus/lib/app/appcompat/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionBarContextView;Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;Z)V

    move-object v0, v1

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onCreateActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionMode;->invalidate()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->initForMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mFadeAnim:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$6;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$6;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_b
    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    :cond_c
    :goto_5
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mAppCompatCallback:Lcom/oneplus/lib/app/appcompat/AppCompatCallback;

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatCallback;->onSupportActionModeStarted(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    :cond_d
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    return-object v1
.end method

.method updateStatusGuard(I)I
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    :cond_0
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v6, v4, v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_1

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v6, :cond_3

    const/4 v3, 0x1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_2

    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/oneplus/commonctrl/R$color;->abc_input_method_navigation_guard:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_3

    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    move v0, v7

    iget-boolean v7, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    goto :goto_3

    :cond_6
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v4, :cond_7

    const/4 v3, 0x1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mActionModeView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return p1
.end method
