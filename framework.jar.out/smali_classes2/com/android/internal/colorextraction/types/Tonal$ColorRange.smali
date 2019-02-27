.class public Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorRange"
.end annotation


# instance fields
.field private mHue:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mLightness:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSaturation:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 453
    .local p1, "hue":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p2, "saturation":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    .local p3, "lightness":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 455
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 456
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 457
    return-void
.end method


# virtual methods
.method public containsColor(FFF)Z
    .locals 3
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .line 460
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 461
    return v1

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 463
    return v1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    return v1

    .line 467
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getCenter()[F
    .locals 5

    .line 471
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    .line 472
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    .line 473
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    .line 474
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 471
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 480
    const-string v0, "H: %s, S: %s, L %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mHue:Landroid/util/Range;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mSaturation:Landroid/util/Range;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->mLightness:Landroid/util/Range;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
