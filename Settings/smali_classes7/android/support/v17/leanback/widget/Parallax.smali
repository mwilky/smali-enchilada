.class public abstract Landroid/support/v17/leanback/widget/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Parallax$FloatPropertyMarkerValue;,
        Landroid/support/v17/leanback/widget/Parallax$FloatProperty;,
        Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;,
        Landroid/support/v17/leanback/widget/Parallax$IntProperty;,
        Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Landroid/util/Property;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatValues:[F

.field final mProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field final mPropertiesReadOnly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation
.end field

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    .line 405
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    .line 407
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    .line 408
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addEffect([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)Landroid/support/v17/leanback/widget/ParallaxEffect;
    .locals 2
    .param p1, "ranges"    # [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    .line 619
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;-><init>()V

    .local v0, "effect":Landroid/support/v17/leanback/widget/ParallaxEffect;
    goto :goto_0

    .line 622
    .end local v0    # "effect":Landroid/support/v17/leanback/widget/ParallaxEffect;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ParallaxEffect$FloatEffect;-><init>()V

    .line 624
    .restart local v0    # "effect":Landroid/support/v17/leanback/widget/ParallaxEffect;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->setPropertyRanges([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)V

    .line 625
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    return-object v0
.end method

.method public final addProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TPropertyT;"
        }
    .end annotation

    .line 455
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 456
    .local v0, "newPropertyIndex":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Parallax;->createProperty(Ljava/lang/String;I)Landroid/util/Property;

    move-result-object v1

    .line 457
    .local v1, "property":Landroid/util/Property;, "TPropertyT;"
    instance-of v2, v1, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 458
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    array-length v2, v2

    .line 459
    .local v2, "size":I
    if-ne v2, v0, :cond_1

    .line 460
    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [I

    .line 461
    .local v4, "newValues":[I
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 462
    iget-object v5, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    .end local v3    # "i":I
    :cond_0
    iput-object v4, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    .line 466
    .end local v4    # "newValues":[I
    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    const v4, 0x7fffffff

    aput v4, v3, v0

    .line 467
    .end local v2    # "size":I
    goto :goto_2

    :cond_2
    instance-of v2, v1, Landroid/support/v17/leanback/widget/Parallax$FloatProperty;

    if-eqz v2, :cond_5

    .line 468
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    array-length v2, v2

    .line 469
    .restart local v2    # "size":I
    if-ne v2, v0, :cond_4

    .line 470
    mul-int/lit8 v4, v2, 0x2

    new-array v4, v4, [F

    .line 471
    .local v4, "newValues":[F
    nop

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 472
    iget-object v5, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aget v5, v5, v3

    aput v5, v4, v3

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    .end local v3    # "i":I
    :cond_3
    iput-object v4, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    .line 476
    .end local v4    # "newValues":[F
    :cond_4
    iget-object v3, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    aput v4, v3, v0

    .line 477
    .end local v2    # "size":I
    nop

    .line 480
    :goto_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-object v1

    .line 478
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Property type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract createProperty(Ljava/lang/String;I)Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TPropertyT;"
        }
    .end annotation
.end method

.method public getEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/ParallaxEffect;",
            ">;"
        }
    .end annotation

    .line 591
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method final getFloatPropertyValue(I)F
    .locals 1
    .param p1, "index"    # I

    .line 541
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aget v0, v0, p1

    return v0
.end method

.method final getIntPropertyValue(I)I
    .locals 1
    .param p1, "index"    # I

    .line 430
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

.method public abstract getMaxValue()F
.end method

.method public final getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TPropertyT;>;"
        }
    .end annotation

    .line 561
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mPropertiesReadOnly:Ljava/util/List;

    return-object v0
.end method

.method public removeAllEffects()V
    .locals 1

    .line 607
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 608
    return-void
.end method

.method public removeEffect(Landroid/support/v17/leanback/widget/ParallaxEffect;)V
    .locals 1
    .param p1, "effect"    # Landroid/support/v17/leanback/widget/ParallaxEffect;

    .line 600
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method final setFloatPropertyValue(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 551
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mFloatValues:[F

    aput p2, v0, p1

    .line 555
    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method final setIntPropertyValue(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 440
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mValues:[I

    aput p2, v0, p1

    .line 444
    return-void

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public updateValues()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 579
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 580
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Parallax;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ParallaxEffect;

    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;->performMapping(Landroid/support/v17/leanback/widget/Parallax;)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method final verifyFloatProperties()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 512
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v2

    .line 516
    .local v2, "last":F
    const/4 v3, 0x1

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "last":F
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 517
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/Parallax;->getFloatPropertyValue(I)F

    move-result v5

    .line 518
    .local v5, "v":F
    cmpg-float v6, v5, v4

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ltz v6, :cond_3

    .line 523
    const v6, -0x800001

    cmpl-float v6, v4, v6

    if-nez v6, :cond_2

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 525
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    .line 527
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    .line 528
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    .line 525
    const-string v0, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 530
    :cond_2
    :goto_1
    move v4, v5

    .line 516
    .end local v5    # "v":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .restart local v5    # "v":F
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-array v8, v8, [Ljava/lang/Object;

    .line 521
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    add-int/lit8 v0, v2, -0x1

    .line 522
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v7

    .line 519
    const-string v0, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 532
    .end local v2    # "i":I
    .end local v5    # "v":F
    :cond_4
    return-void
.end method

.method verifyIntProperties()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 490
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax;, "Landroid/support/v17/leanback/widget/Parallax<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v2

    .line 494
    .local v2, "last":I
    const/4 v3, 0x1

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "last":I
    :goto_0
    iget-object v5, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 495
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v5

    .line 496
    .local v5, "v":I
    const/4 v6, 0x3

    const/4 v7, 0x4

    if-lt v5, v4, :cond_3

    .line 501
    const/high16 v8, -0x80000000

    if-ne v4, v8, :cond_2

    const v8, 0x7fffffff

    if-eq v5, v8, :cond_1

    goto :goto_1

    .line 502
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v9, v2, -0x1

    .line 504
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v9, v2, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 502
    const-string v0, "Parallax Property[%d]\"%s\" is UNKNOWN_BEFORE and Property[%d]\"%s\" is UNKNOWN_AFTER"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 507
    :cond_2
    :goto_1
    move v4, v5

    .line 494
    .end local v5    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .restart local v5    # "v":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-array v7, v7, [Ljava/lang/Object;

    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    add-int/lit8 v0, v2, -0x1

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 497
    const-string v0, "Parallax Property[%d]\"%s\" is smaller than Property[%d]\"%s\""

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 509
    .end local v2    # "i":I
    .end local v5    # "v":I
    :cond_4
    return-void
.end method
