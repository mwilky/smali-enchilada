.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.super Landroid/widget/ImageView;
.source "OPFloatingActionButton.java"


# annotations
.annotation runtime Lcom/oneplus/lib/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;,
        Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final SIZE_MINI:I = 0x1

.field private static final SIZE_NORMAL:I


# instance fields
.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mBorderWidth:I

.field private mContentPadding:I

.field private final mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

.field private mRippleColor:I

.field private final mShadowPadding:Landroid/graphics/Rect;

.field private mSize:I

.field private mUserSetVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_rippleColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_fabSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_borderWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_elevation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPFloatingActionButton_op_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V

    move-object v10, v2

    new-instance v2, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-direct {v2, p0, v10}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;-><init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->design_fab_content_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v11, v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v2

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v6, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v7, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v2, v8}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setElevation(F)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v2, v9}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setPressedTranslationZ(F)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mContentPadding:I

    return v0
.end method

.method static synthetic access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static resolveAdjustedSize(II)I
    .locals 4

    move v0, p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0

    :cond_2
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    :goto_0
    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->onDrawableStateChanged([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mSize:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method final getUserSetVisibility()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->hide(Z)V

    return-void
.end method

.method final internalSetVisibility(IZ)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mUserSetVisibility:I

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->jumpDrawableToCurrentState()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getSizeDimension()I

    move-result v0

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->resolveAdjustedSize(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget v6, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBorderWidth:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mRippleColor:I

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->setRippleColor(I)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->internalSetVisibility(IZ)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->mImpl:Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButtonImpl;->show(Z)V

    return-void
.end method
