.class final Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$8;
.super Landroid/util/Property;
.source "CompositeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 514
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1, "obj"    # Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    .line 528
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    .line 529
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 531
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->getFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 514
    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$8;->get(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Float;)V
    .locals 2
    .param p1, "obj"    # Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
    .param p2, "value"    # Ljava/lang/Float;

    .line 517
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->inheritFromParent(F)Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/graphics/BoundsRule;->right:Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/BoundsRule$ValueRule;->setFraction(F)V

    .line 523
    :goto_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->recomputeBounds()V

    .line 524
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 514
    check-cast p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$8;->set(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Ljava/lang/Float;)V

    return-void
.end method
