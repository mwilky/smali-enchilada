.class public abstract Landroid/support/v17/leanback/widget/ParallaxEffect;
.super Ljava/lang/Object;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;,
        Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;
    }
.end annotation


# instance fields
.field final mMarkerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation
.end field

.field final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation
.end field

.field final mTotalWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public final addTarget(Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 1
    .param p1, "target"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 140
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method abstract calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
.end method

.method abstract calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
.end method

.method final getFractionWithWeightAdjusted(FI)F
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "markerValueIndex"    # I

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 260
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 261
    .local v0, "hasWeightsDefined":Z
    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 263
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 264
    .local v2, "allWeights":F
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    .line 265
    .end local p1    # "fraction":F
    .local v3, "fraction":F
    if-lt p2, v1, :cond_1

    .line 266
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    add-int/lit8 v1, p2, -0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, v2

    add-float/2addr v3, p1

    .line 268
    .end local v2    # "allWeights":F
    .end local v3    # "fraction":F
    .restart local p1    # "fraction":F
    :cond_1
    move p1, v3

    goto :goto_1

    .line 270
    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v2, v3

    .line 271
    .restart local v2    # "allWeights":F
    div-float/2addr p1, v2

    .line 272
    if-lt p2, v1, :cond_3

    .line 273
    add-int/lit8 v1, p2, -0x1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 277
    .end local v0    # "hasWeightsDefined":Z
    .end local v2    # "allWeights":F
    :cond_3
    :goto_1
    return p1
.end method

.method public final getPropertyRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    return-object v0
.end method

.method public final getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    return-object v0
.end method

.method public final getWeights()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    return-object v0
.end method

.method public final performMapping(Landroid/support/v17/leanback/widget/Parallax;)V
    .locals 6
    .param p1, "source"    # Landroid/support/v17/leanback/widget/Parallax;

    .line 205
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    instance-of v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyIntProperties()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyFloatProperties()V

    .line 213
    :goto_0
    const/4 v0, 0x0

    .line 214
    .local v0, "fractionCalculated":Z
    const/4 v1, 0x0

    .line 215
    .local v1, "fraction":F
    const/4 v2, 0x0

    .line 216
    .local v2, "directValue":Ljava/lang/Number;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 217
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 218
    .local v4, "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    if-nez v2, :cond_2

    .line 220
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v2

    .line 222
    :cond_2
    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    goto :goto_2

    .line 224
    :cond_3
    if-nez v0, :cond_4

    .line 225
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v1

    .line 228
    :cond_4
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ParallaxTarget;->update(F)V

    .line 216
    .end local v4    # "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public final removeTarget(Landroid/support/v17/leanback/widget/ParallaxTarget;)V
    .locals 1
    .param p1, "target"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 198
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public final varargs setPropertyRanges([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)V
    .locals 4
    .param p1, "markerValues"    # [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    .line 88
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 90
    .local v2, "markerValue":Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v2    # "markerValue":Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public final varargs setWeights([F)V
    .locals 6
    .param p1, "weights"    # [F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 104
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 105
    .local v3, "weight":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-lez v4, :cond_0

    .line 104
    .end local v3    # "weight":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .restart local v3    # "weight":F
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    .end local v3    # "weight":F
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "totalWeight":F
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    aget v3, p1, v1

    .line 113
    .restart local v3    # "weight":F
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-float/2addr v0, v3

    .line 115
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v3    # "weight":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_2
    return-void
.end method

.method public final target(Landroid/support/v17/leanback/widget/ParallaxTarget;)Landroid/support/v17/leanback/widget/ParallaxEffect;
    .locals 1
    .param p1, "target"    # Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 150
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object p0
.end method

.method public final target(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)Landroid/support/v17/leanback/widget/ParallaxEffect;
    .locals 2
    .param p1, "targetObject"    # Ljava/lang/Object;
    .param p2, "values"    # Landroid/animation/PropertyValuesHolder;

    .line 163
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    new-instance v1, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;

    invoke-direct {v1, p1, p2}, Landroid/support/v17/leanback/widget/ParallaxTarget$PropertyValuesHolderTarget;-><init>(Ljava/lang/Object;Landroid/animation/PropertyValuesHolder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public final target(Ljava/lang/Object;Landroid/util/Property;)Landroid/support/v17/leanback/widget/ParallaxEffect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Number;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;)",
            "Landroid/support/v17/leanback/widget/ParallaxEffect;"
        }
    .end annotation

    .line 180
    .local p1, "targetObject":Ljava/lang/Object;, "TT;"
    .local p2, "targetProperty":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    new-instance v1, Landroid/support/v17/leanback/widget/ParallaxTarget$DirectPropertyTarget;

    invoke-direct {v1, p1, p2}, Landroid/support/v17/leanback/widget/ParallaxTarget$DirectPropertyTarget;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object p0
.end method

.method public final varargs weights([F)Landroid/support/v17/leanback/widget/ParallaxEffect;
    .locals 0
    .param p1, "weights"    # [F
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->setWeights([F)V

    .line 131
    return-object p0
.end method
