.class public Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
.super Ljava/lang/Object;
.source "SearchOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# static fields
.field private static final BRIGHTNESS_ALPHA:F = 0.15f


# instance fields
.field public brightColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public iconColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0, p1, p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    if-ne p2, p1, :cond_0

    invoke-static {p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->getBrightColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    iput p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    return-void
.end method

.method public static getBrightColor(I)I
    .locals 7

    const/high16 v0, 0x42190000    # 38.25f

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    const/high16 v3, 0x42190000    # 38.25f

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v3

    float-to-int v2, v6

    invoke-static {v2, v1, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method
