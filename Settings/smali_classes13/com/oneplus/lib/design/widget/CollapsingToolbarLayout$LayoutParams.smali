.class public Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams$CollapseMode;
    }
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field mCollapseMode:I

.field mParallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_Layout_op_layout_collapseMode:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OpCollapsingToolbarLayout_Layout_op_layout_collapseParallaxMultiplier:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->setParallaxMultiplier(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return v0
.end method

.method public setCollapseMode(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    return-void
.end method
