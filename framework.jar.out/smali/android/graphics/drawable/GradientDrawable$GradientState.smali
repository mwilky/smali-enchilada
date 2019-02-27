.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field public mAngle:I

.field mAttrCorners:[I

.field mAttrGradient:[I

.field mAttrPadding:[I

.field mAttrSize:[I

.field mAttrSolid:[I

.field mAttrStroke:[I

.field mCenterX:F

.field mCenterY:F

.field public mChangingConfigurations:I

.field mDensity:I

.field public mDither:Z

.field public mGradient:I

.field public mGradientColors:[I

.field mGradientRadius:F

.field mGradientRadiusType:I

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field mOpaqueOverBounds:Z

.field mOpaqueOverShape:Z

.field public mOpticalInsets:Landroid/graphics/Insets;

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColors:Landroid/content/res/ColorStateList;

.field public mStrokeColors:Landroid/content/res/ColorStateList;

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field mThemeAttrs:[I

.field public mThickness:I

.field public mThicknessRatio:F

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseLevel:Z

.field mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/high16 v3, 0x41100000    # 9.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_4

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/high16 v3, 0x41100000    # 9.0f

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method private applyDensityScaling(II)V
    .locals 6

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    :cond_0
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v3, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    :cond_2
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, p1, p2, v2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v4, v4, v2

    float-to-int v4, v4

    invoke-static {v4, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    int-to-float v4, v4

    aput v4, v0, v2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v2, v2, v1

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    const/4 v4, 0x2

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    const/4 v4, 0x3

    aget v2, v2, v4

    float-to-int v2, v2

    invoke-static {v2, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    int-to-float v2, v2

    aput v2, v0, v4

    :cond_5
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    :cond_6
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    :cond_7
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    :cond_8
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-nez v0, :cond_9

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    invoke-static {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    :cond_9
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-lez v0, :cond_a

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    :cond_a
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-lez v0, :cond_b

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    :cond_b
    return-void
.end method

.method private computeOpacity()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez v2, :cond_3

    move v0, v1

    nop

    :cond_3
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    nop

    :cond_2
    or-int/2addr v0, v2

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v2
.end method

.method public setCornerRadii([F)V
    .locals 1

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public final setDensity(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return-void
.end method

.method public setGradientColors([I)V
    .locals 1

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setGradientRadius(FI)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    return-void
.end method

.method public setGradientType(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return-void
.end method

.method public setShape(I)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setSize(II)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method public setSolidColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method
