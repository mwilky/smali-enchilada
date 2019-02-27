.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_1
    :goto_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void
.end method

.method private buildPathIfDirty()V
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    :cond_0
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 11

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v5, v8

    :goto_1
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v7, :cond_4

    iget v7, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v7, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v7, v8

    :goto_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sub-float v9, v4, v7

    sub-float v10, v6, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v3, v9

    neg-float v9, v5

    neg-float v10, v5

    invoke-virtual {v3, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v9, :cond_5

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    goto :goto_3

    :cond_5
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    :goto_3
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v9, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float v2, v4, v7

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float v2, v1

    invoke-virtual {v9, v8, v1, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    goto :goto_4

    :cond_6
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v8, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_4
    return-object v9
.end method

.method private ensureValidRect()Z
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v5, v6

    :cond_0
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v6, :cond_11

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x461c4000    # 10000.0f

    if-nez v8, :cond_2

    iget-boolean v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v9, v1, v10

    nop

    :cond_1
    move v1, v9

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    iget-object v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    :goto_0
    move v15, v11

    goto :goto_1

    :pswitch_0
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    move v11, v9

    goto :goto_0

    :pswitch_1
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    goto :goto_0

    :pswitch_2
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    move v10, v8

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    goto :goto_0

    :pswitch_3
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    goto :goto_0

    :pswitch_4
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    move v11, v9

    goto :goto_0

    :pswitch_5
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    goto :goto_0

    :pswitch_6
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    move v10, v8

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    goto :goto_0

    :goto_1
    nop

    iget-object v14, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/LinearGradient;

    iget-object v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v13

    move-object/from16 v17, v12

    move v12, v8

    move-object v2, v13

    move v13, v9

    move/from16 v19, v1

    move-object v1, v14

    move v14, v10

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_7

    :cond_2
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v9

    iget v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v11, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v9, v11

    add-float/2addr v2, v9

    iget v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v8, :cond_3

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v8, v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    :goto_2
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v11, :cond_4

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v11, v11

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    :goto_3
    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float/2addr v9, v12

    goto :goto_4

    :cond_5
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v11, v8, :cond_6

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v9, v8

    :cond_6
    :goto_4
    iget-boolean v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v8, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    mul-float/2addr v9, v8

    :cond_7
    iput v9, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    const/4 v8, 0x0

    cmpg-float v8, v9, v8

    if-gtz v8, :cond_8

    const v8, 0x3a83126f    # 0.001f

    goto :goto_5

    :cond_8
    move v8, v9

    :goto_5
    iget-object v9, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/RadialGradient;

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v10

    move v12, v1

    move v13, v2

    move v14, v8

    move-object v15, v6

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_7

    :cond_9
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-ne v2, v8, :cond_10

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v11, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v11

    add-float/2addr v2, v8

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    iget v12, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    move-object v11, v6

    const/4 v12, 0x0

    iget-boolean v13, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v13, :cond_f

    iget-object v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    array-length v13, v6

    if-eqz v11, :cond_a

    array-length v14, v11

    add-int/lit8 v15, v13, 0x1

    if-eq v14, v15, :cond_b

    :cond_a
    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [I

    iput-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object v11, v14

    :cond_b
    invoke-static {v6, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v13, -0x1

    aget v14, v6, v14

    aput v14, v11, v13

    iget-object v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    add-int/lit8 v14, v13, -0x1

    int-to-float v14, v14

    div-float v14, v9, v14

    if-eqz v12, :cond_c

    array-length v15, v12

    add-int/lit8 v1, v13, 0x1

    if-eq v15, v1, :cond_d

    :cond_c
    add-int/lit8 v1, v13, 0x1

    new-array v1, v1, [F

    iput-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object v12, v1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    const/16 v20, 0x0

    :goto_6
    move/from16 v10, v20

    if-ge v10, v13, :cond_e

    int-to-float v15, v10

    mul-float/2addr v15, v14

    mul-float/2addr v15, v1

    aput v15, v12, v10

    add-int/lit8 v20, v10, 0x1

    goto :goto_6

    :cond_e
    aput v9, v12, v13

    :cond_f
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/SweepGradient;

    invoke-direct {v9, v2, v8, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_10
    :goto_7
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_11

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_11
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    :goto_1
    move v1, v3

    :cond_2
    return v1
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v3, v2, :cond_9

    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    if-le v4, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_3
    const-string v5, "gradient"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "solid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "stroke"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_6
    const-string v5, "corners"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "padding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_8
    const-string v5, "drawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad element under <shape>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method static isOpaque(I)Z
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpaqueForState()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private modulateAlpha(I)I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setStrokeInternal(IIFF)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_1

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    aput p4, v4, v1

    invoke-direct {v3, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v0, v3

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 13

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {p1, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    if-ne v4, v1, :cond_0

    if-ne v6, v1, :cond_0

    if-ne v8, v1, :cond_0

    if-eq v10, v1, :cond_1

    :cond_0
    const/16 v11, 0x8

    new-array v11, v11, [F

    int-to-float v12, v4

    aput v12, v11, v2

    int-to-float v2, v4

    aput v2, v11, v3

    int-to-float v2, v6

    aput v2, v11, v5

    int-to-float v2, v6

    aput v2, v11, v7

    int-to-float v2, v10

    aput v2, v11, v9

    const/4 v2, 0x5

    int-to-float v3, v10

    aput v3, v11, v2

    const/4 v2, 0x6

    int-to-float v3, v8

    aput v3, v11, v2

    const/4 v2, 0x7

    int-to-float v3, v8

    aput v3, v11, v2

    invoke-virtual {p0, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_1
    return-void
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v4, 0x5

    invoke-static {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v5, 0x6

    invoke-static {v0, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iget-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    if-eqz v9, :cond_1

    new-array v14, v13, [I

    iput-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aput v7, v14, v3

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aput v8, v14, v10

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aput v11, v14, v6

    new-array v14, v13, [F

    iput-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v15, 0x0

    aput v15, v14, v3

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget v15, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v16, 0x3f000000    # 0.5f

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_0

    iget v15, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    goto :goto_0

    :cond_0
    iget v15, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    :goto_0
    aput v15, v14, v10

    iget-object v14, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    aput v12, v14, v6

    goto :goto_1

    :cond_1
    new-array v6, v6, [I

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aput v7, v6, v3

    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aput v11, v6, v10

    :goto_1
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v6, :cond_b

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v3, v3

    invoke-virtual {v0, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    float-to-int v3, v3

    rem-int/lit16 v3, v3, 0x168

    rem-int/lit8 v4, v3, 0x2d

    if-nez v4, :cond_a

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    if-eqz v3, :cond_9

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_8

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x87

    if-eq v3, v4, :cond_6

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_5

    const/16 v4, 0xe1

    if-eq v3, v4, :cond_4

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x13b

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_4
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_5
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_6
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_7
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_8
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_9
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    nop

    :goto_2
    goto :goto_5

    :cond_a
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<gradient> tag requires \'angle\' attribute to be a multiple of 45"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_f

    iget v13, v6, Landroid/util/TypedValue;->type:I

    if-ne v13, v5, :cond_d

    invoke-virtual {v6, v12, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v4

    iget v5, v6, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v5, 0x0

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v10, :cond_c

    const/4 v10, 0x2

    goto :goto_3

    :cond_c
    nop

    :goto_3
    move v3, v10

    goto :goto_4

    :cond_d
    iget v5, v6, Landroid/util/TypedValue;->type:I

    if-ne v5, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    nop

    :goto_4
    iput v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    goto :goto_5

    :cond_f
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-eq v3, v10, :cond_10

    :goto_5
    return-void

    :cond_10
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x3

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v2, v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v3, 0x1

    if-ltz v1, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v6, v5, v2

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v5, v3

    invoke-direct {v1, v5, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    :cond_0
    const/16 v1, 0x8

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    :cond_1
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v3, :cond_3

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_4
    const/16 v3, 0xb

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0xd

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/16 v5, 0xc

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0xa

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_4
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v9, v1

    invoke-direct {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-lez v11, :cond_2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    move v13, v3

    if-lez v10, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    move v14, v3

    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_3

    :cond_4
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_3
    move-object v6, v3

    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/16 v3, 0xff

    if-ge v11, v3, :cond_6

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-lt v4, v3, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    move/from16 v16, v1

    if-eqz v16, :cond_8

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_7

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    :cond_7
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object v1, v7

    move-object v12, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    :cond_8
    move-object v12, v6

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v12, :cond_9

    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    if-eqz v13, :cond_a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    :goto_5
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_10

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    if-eqz v13, :cond_10

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, v7

    move/from16 v3, v17

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_10

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    :pswitch_3
    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_10

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_b
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v13, :cond_c

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_c
    goto :goto_6

    :cond_d
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_e

    if-nez v12, :cond_e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_f
    if-eqz v13, :cond_10

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_10
    :goto_6
    if-eqz v16, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7

    :cond_11
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v13, :cond_12

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_12
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getCornerRadii()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public getGradientCenterX()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public getGradientCenterY()F
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public getGradientRadius()F
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public getGradientType()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 9

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    goto :goto_1

    :cond_2
    nop

    move v4, v3

    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/high16 v5, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    const v3, 0x38d1b717    # 1.0E-4f

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v3, v5

    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v4, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-float v6, v4, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v7, v5, v8, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void

    :pswitch_2
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void

    :cond_4
    const/4 v4, 0x0

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_5

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_5
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getShape()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public getUseLevel()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isStateful()Z
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_1

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v7, v6, :cond_1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_1
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    const/4 v3, 0x1

    return v3

    :cond_3
    return v3
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientRadius(F)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientType(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShape(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStroke(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setStroke(IIFF)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
