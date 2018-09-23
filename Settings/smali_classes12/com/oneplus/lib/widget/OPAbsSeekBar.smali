.class public abstract Lcom/oneplus/lib/widget/OPAbsSeekBar;
.super Lcom/oneplus/lib/widget/OPProgressBar;
.source "OPAbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    iput v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumb:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTintMode:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTintMode:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    :cond_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbTint:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    :cond_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_splitTrack:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_android_thumbOffset:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbOffset(I)V

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPSeekBar_useDisabledAlpha:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mScaledTouchSlop:I

    return-void
.end method

.method private applyThumbTint()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setHotspot(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    iget v2, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v2, v3

    iget v5, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    move v7, v1

    add-int v6, v1, v4

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v8, v2, v5

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    add-int v9, v8, v3

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_2

    iget v11, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v12, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v11, v12

    iget v12, v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    add-int v13, v8, v11

    add-int v0, v7, v12

    add-int v1, v9, v11

    move v14, v2

    add-int v2, v6, v12

    invoke-virtual {v10, v13, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_2

    :cond_2
    move v14, v2

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v4, v0, v4

    if-le v2, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    if-ge v2, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-int v4, v1, v2

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    if-ge v2, v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v4, v0, v4

    if-le v2, v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int v4, v2, v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchProgressOffset:F

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v5

    int-to-float v6, v5

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    int-to-float v6, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setHotspot(FF)V

    float-to-int v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setProgress(IZ)Z

    return-void
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 10

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    :goto_0
    if-le v5, v3, :cond_1

    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    add-int/2addr v6, v4

    goto :goto_1

    :cond_1
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, 0x0

    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    :goto_1
    if-eqz v1, :cond_2

    iget v8, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->seekbar_thumb_optical_inset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->seekbar_thumb_optical_inset_disabled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    :goto_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/oneplus/lib/widget/OPAbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onKeyChange()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    neg-int v0, v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setProgress(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onKeyChange()V

    return v2

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/OPProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMinWidth:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMinHeight:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v5

    :cond_1
    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingTop:I

    iget v6, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-static {v3, p1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-static {v4, p2, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPProgressBar;->onProgressRefresh(FZI)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    goto/16 :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->attemptClaimDrag()V

    :cond_4
    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mTouchDownX:F

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setPressed(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->attemptClaimDrag()V

    nop

    :goto_1
    return v2

    :cond_8
    :goto_2
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

.method public setKeyProgressIncrement(I)V
    .locals 1

    if-gez p1, :cond_0

    neg-int v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    iget v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->requestLayout()V

    :cond_3
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
