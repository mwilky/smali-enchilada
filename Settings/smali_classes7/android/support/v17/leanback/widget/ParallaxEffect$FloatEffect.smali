.class final Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;
.super Landroid/support/v17/leanback/widget/ParallaxEffect;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatEffect"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    move v3, v2

    move v2, v0

    move v0, v3

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Marker value must use same Property for direct mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must use two marker values for direct mapping"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;->getIndex()I

    move-result v6

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v7

    invoke-virtual {p1, v6}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v8

    if-nez v3, :cond_0

    cmpl-float v5, v8, v7

    if-ltz v5, :cond_6

    const/4 v5, 0x0

    return v5

    :cond_0
    if-ne v0, v6, :cond_2

    cmpg-float v9, v2, v7

    if-ltz v9, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v9, "marker value of same variable must be descendant order"

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_1
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v9, v8, v9

    if-nez v9, :cond_3

    sub-float v5, v2, v1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v9

    div-float/2addr v5, v9

    invoke-virtual {p0, v5, v3}, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_3
    cmpl-float v9, v8, v7

    if-ltz v9, :cond_6

    if-ne v0, v6, :cond_4

    sub-float v5, v2, v8

    sub-float v9, v2, v7

    div-float/2addr v5, v9

    :goto_2
    goto :goto_3

    :cond_4
    const v9, -0x800001

    cmpl-float v9, v1, v9

    if-eqz v9, :cond_5

    sub-float v5, v8, v1

    add-float/2addr v2, v5

    sub-float v5, v2, v8

    sub-float v9, v2, v7

    div-float/2addr v5, v9

    goto :goto_2

    :cond_5
    sub-float v9, v8, v7

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    div-float/2addr v9, v10

    sub-float/2addr v5, v9

    :goto_3
    invoke-virtual {p0, v5, v3}, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    :cond_6
    move v1, v8

    move v0, v6

    move v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v5
.end method
