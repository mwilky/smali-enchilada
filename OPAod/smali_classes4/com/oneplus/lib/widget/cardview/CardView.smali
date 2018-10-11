.class public Lcom/oneplus/lib/widget/cardview/CardView;
.super Landroid/widget/FrameLayout;
.source "CardView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewDelegate;


# static fields
.field private static final IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# instance fields
.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;-><init>()V

    sput-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/cardview/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v7, p0

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->CardView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->CardView_Light:I

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v8, v9, v0, v10, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardBackgroundColor:I

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardCornerRadius:I

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardElevation:I

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardMaxElevation:I

    invoke-virtual {v11, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardUseCompatPadding:I

    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_cardPreventCornerOverlap:I

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPadding:I

    invoke-virtual {v11, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    iget-object v1, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingLeft:I

    invoke-virtual {v11, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingTop:I

    invoke-virtual {v11, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingRight:I

    invoke-virtual {v11, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v7, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->CardView_contentPaddingBottom:I

    invoke-virtual {v11, v2, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    cmpl-float v1, v14, v0

    if-lez v1, :cond_0

    move v0, v14

    :cond_0
    move/from16 v16, v0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    move-object v1, v7

    move-object v2, v8

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v6, v16

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    instance-of v0, v0, Lcom/oneplus/lib/widget/cardview/CardViewApi21;

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v3, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    nop

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v1, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    nop

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mPreventCornerOverlap:Z

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->onPreventCornerOverlapChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/cardview/CardView;->mCompatPadding:Z

    sget-object v0, Lcom/oneplus/lib/widget/cardview/CardView;->IMPL:Lcom/oneplus/lib/widget/cardview/CardViewImpl;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/cardview/CardViewImpl;->onCompatPaddingChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    return-void
.end method
