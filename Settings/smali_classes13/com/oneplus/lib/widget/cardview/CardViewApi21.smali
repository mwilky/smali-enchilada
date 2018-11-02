.class Lcom/oneplus/lib/widget/cardview/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Lcom/oneplus/lib/widget/cardview/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F
    .locals 1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 3

    new-instance v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setBackgroundColor(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;I)V
    .locals 1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setColor(I)V

    return-void
.end method

.method public setElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 3

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;F)V
    .locals 1

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawable;->setRadius(F)V

    return-void
.end method

.method public updatePadding(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)V
    .locals 5

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getMaxElevation(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/cardview/CardViewApi21;->getRadius(Lcom/oneplus/lib/widget/cardview/CardViewDelegate;)F

    move-result v1

    nop

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    nop

    invoke-interface {p1}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-interface {p1, v2, v3, v2, v3}, Lcom/oneplus/lib/widget/cardview/CardViewDelegate;->setShadowPadding(IIII)V

    return-void
.end method
