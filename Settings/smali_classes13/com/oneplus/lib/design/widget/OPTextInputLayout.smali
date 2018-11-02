.class public Lcom/oneplus/lib/design/widget/OPTextInputLayout;
.super Landroid/widget/LinearLayout;
.source "OPTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;,
        Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextInputLayout"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field final mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

.field mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field mEditText:Landroid/widget/EditText;

.field private mError:Ljava/lang/CharSequence;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHasPasswordToggleTintList:Z

.field private mHasPasswordToggleTintMode:Z

.field private mHasReconstructedEditTextBackground:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mIndicatorsAdded:I

.field private final mInputFrame:Landroid/widget/FrameLayout;

.field private mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordToggleContentDesc:Ljava/lang/CharSequence;

.field private mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPasswordToggleEnabled:Z

.field private mPasswordToggleTintList:Landroid/content/res/ColorStateList;

.field private mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

.field private mPasswordToggledVisible:Z

.field private mRestoringSavedState:Z

.field private mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setOrientation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setAddStatesFromChildren(Z)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    sget-object v3, Lcom/oneplus/lib/design/widget/OPAnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const v3, 0x800033

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout:[I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Widget_Design_OPTextInputLayout:I

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintEnabled:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintAnimationEnabled:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_android_textColorHint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opHintTextAppearance:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintTextAppearance(I)V

    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorTextAppearance:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opErrorEnabled:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterEnabled:I

    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterMaxLength:I

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterMaxLength(I)V

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterTextAppearance:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opCounterOverflowTextAppearance:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleEnabled:I

    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleDrawable:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleContentDescription:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTint:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextInputLayout_opPasswordToggleTintMode:I

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/oneplus/lib/design/widget/OPViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setCounterEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_4
    new-instance v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return v0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method private applyPasswordToggleTint()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private collapseHint(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private ensureBackgroundDrawableStateWorkaround()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasReconstructedEditTextBackground:Z

    :cond_3
    return-void
.end method

.method private expandHint(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->animateToExpansionFraction(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static recursiveSetEnabled(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorsAdded:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a OPTextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    const/16 v3, 0x30

    and-int/lit8 v4, v1, -0x71

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$1;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->adjustIndicatorPadding()V

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setError(Ljava/lang/CharSequence;ZZ)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget-object v6, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolatorSine:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$2;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$3;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41700000    # 15.0f
        0x0
    .end array-data
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private shouldShowPasswordIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateEditTextBackground()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->ensureBackgroundDrawableStateWorkaround()V

    invoke-static {v0}, Lcom/oneplus/lib/design/widget/OPDrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->refreshDrawableState()V

    :goto_0
    return-void
.end method

.method private updateInputLayoutMargins()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updatePasswordToggleView()V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->shouldShowPasswordIcon()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/oneplus/commonctrl/R$layout;->op_design_text_input_password_icon:I

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    new-instance v5, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$4;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setMinimumHeight(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v4, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v5, v0, v2

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_4

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalEditTextEndDrawable:Landroid/graphics/drawable/Drawable;

    aget-object v1, v0, v1

    invoke-static {v2, v4, v3, v5, v1}, Landroid/support/v4/widget/TextViewCompat;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDummyDrawable:Landroid/graphics/drawable/Drawable;

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, -0x71

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method animateToExpansionFraction(F)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$5;-><init>(Lcom/oneplus/lib/design/widget/OPTextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw v1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mRestoringSavedState:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->invalidate()V

    :cond_3
    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mInDrawableStateChanged:Z

    return-void
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mError:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isCounterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    return v0
.end method

.method public isHintEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    return v0
.end method

.method final isHintExpanded()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    return v0
.end method

.method public isPasswordVisibilityToggleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {p0, v1, v0}, Lcom/oneplus/lib/design/widget/OPViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getPaddingTop()I

    move-result v4

    sub-int v5, p5, p3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/design/widget/OPTextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    :cond_0
    return-object v1
.end method

.method passwordVisibilityToggleRequested()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    iget-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->op_textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const v2, 0x10301f1

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    :cond_3
    return-void
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateCounter(I)V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->recursiveSetEnabled(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setError(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    sget v2, Lcom/oneplus/commonctrl/R$id;->op_textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, -0xff01

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const v3, 0x10301f1

    invoke-static {v2, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->op_error_color_material_default:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorShown:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorEnabled:Z

    :cond_5
    return-void
.end method

.method public setErrorTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorTextAppearance:I

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintAnimationEnabled:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    :cond_4
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateInputLayoutMargins()V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    nop

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleContentDesc:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleView:Lcom/oneplus/lib/design/widget/OPCheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/OPCheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleEnabled:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggledVisible:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updatePasswordToggleView()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintList:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mPasswordToggleTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHasPasswordToggleTintMode:Z

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->applyPasswordToggleTint()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method updateCounter(I)V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    const/4 v3, 0x1

    if-le p1, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowTextAppearance:I

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterTextAppearance:I

    :goto_1
    invoke-static {v1, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$string;->op_character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(Z)V

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateEditTextBackground()V

    :cond_4
    return-void
.end method

.method updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->updateLabelState(ZZ)V

    return-void
.end method

.method updateLabelState(ZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getDrawableState()[I

    move-result-object v3

    const v4, 0x101009c

    invoke-static {v3, v4}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->arrayContains([II)Z

    move-result v3

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v2, v4

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterOverflowed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mCollapsingTextHelper:Lcom/oneplus/lib/design/widget/CollapsingTextHelper;

    iget-object v5, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_7

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-nez v4, :cond_9

    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->expandHint(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    if-nez p2, :cond_8

    iget-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->mHintExpanded:Z

    if-eqz v4, :cond_9

    :cond_8
    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPTextInputLayout;->collapseHint(Z)V

    :cond_9
    :goto_3
    return-void
.end method
