.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0x1000000

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field private static final TAG:Ljava/lang/String; = "Tonal"

.field public static final THRESHOLD_COLOR_DARK:I = -0xdededf

.field public static final THRESHOLD_COLOR_LIGHT:I = -0x1f1f20


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, -0x1f1f20

    goto :goto_1

    :cond_1
    const/high16 v1, -0x1000000

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    return-void
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 6

    const/4 v0, -0x1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v2

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v2

    sub-float v5, p3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 8

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    move-object v0, v4

    goto/16 :goto_3

    :cond_1
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_2

    cmpl-float v5, p1, v7

    if-ltz v5, :cond_2

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    move-object v0, v4

    goto/16 :goto_3

    :cond_2
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    cmpg-float v5, p1, v6

    if-gtz v5, :cond_3

    move-object v0, v4

    goto/16 :goto_3

    :cond_3
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    :goto_1
    move v1, v5

    goto :goto_2

    :cond_4
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_5

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_5

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v1, p1, v5

    goto :goto_2

    :cond_5
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_6

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_6

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v1, p1, v5

    goto :goto_2

    :cond_6
    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_7

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_7

    move-object v0, v4

    iget v5, v4, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-object v0
.end method

.method private static fit([FFIFF)[F
    .locals 4

    array-length v0, p0

    new-array v0, v0, [F

    aget v1, p0, p2

    sub-float v1, p1, v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget v3, p0, v2

    add-float/2addr v3, v1

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static fract(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private isBlacklisted([F)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    aget v2, p1, v2

    aget v4, p1, v1

    const/4 v5, 0x2

    aget v5, p1, v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_0
    and-int/lit8 v11, v8, 0x4

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    move v11, v4

    :goto_1
    if-nez v7, :cond_3

    return v4

    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x3

    new-array v14, v13, [F

    move v15, v4

    :goto_2
    if-ge v15, v7, :cond_6

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/graphics/Color;

    invoke-virtual {v13}, Landroid/graphics/Color;->toArgb()I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v5

    move-object/from16 v17, v6

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4, v5, v6, v14}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    if-eqz v11, :cond_5

    invoke-direct {v0, v14}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, v17

    const/4 v4, 0x0

    const/4 v13, 0x3

    goto :goto_2

    :cond_5
    :goto_3
    move-object v12, v13

    goto :goto_4

    :cond_6
    move-object/from16 v17, v6

    :goto_4
    if-nez v12, :cond_7

    const/4 v4, 0x0

    return v4

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v12}, Landroid/graphics/Color;->toArgb()I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v6, v10, v13, v14}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    aget v6, v14, v4

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v6, v10

    aput v6, v14, v4

    aget v6, v14, v4

    const/4 v10, 0x1

    aget v13, v14, v10

    invoke-direct {v0, v6, v13}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v10, "Tonal"

    const-string v13, "Could not find a tonal palette!"

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_8
    aget v10, v14, v4

    const/4 v4, 0x1

    aget v13, v14, v4

    const/4 v4, 0x2

    aget v15, v14, v4

    invoke-static {v6, v10, v13, v15}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_9

    const-string v4, "Tonal"

    const-string v13, "Could not find best fit!"

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    return v13

    :cond_9
    const/4 v13, 0x0

    iget-object v15, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v4, v14, v13

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v18, v5

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v15, v4, v10, v13, v5}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v4

    iget-object v5, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    const/4 v13, 0x1

    aget v15, v14, v13

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v19, v7

    const/4 v7, 0x0

    invoke-static {v5, v15, v10, v7, v13}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v5

    iget-object v15, v6, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v20, v6

    const/16 v16, 0x2

    aget v6, v14, v16

    invoke-static {v15, v6, v10, v7, v13}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Tonal Palette - index: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ". Main color: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v10, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\nColors: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_5
    array-length v15, v4

    if-ge v13, v15, :cond_b

    invoke-direct {v0, v13, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v4

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v13, v15, :cond_a

    const-string v15, ", "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    const-string v13, "Tonal"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    invoke-direct {v0, v7, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v13

    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v13, v15}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v15, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move/from16 v21, v7

    const v7, -0x1f1f20

    move/from16 v22, v8

    iget-object v8, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v7, v8}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v7, v7, v16

    cmpl-float v8, v15, v7

    if-lez v8, :cond_c

    const/4 v8, 0x0

    return v8

    :cond_c
    const v8, -0xdededf

    move/from16 v23, v7

    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v8, v7}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    iget-object v7, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    cmpg-float v8, v15, v7

    if-gez v8, :cond_d

    const/4 v8, 0x0

    return v8

    :cond_d
    invoke-virtual {v1, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v1, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v9, :cond_e

    array-length v8, v4

    const/16 v16, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_6
    goto :goto_7

    :cond_e
    const/4 v8, 0x2

    if-ge v10, v8, :cond_f

    const/4 v8, 0x0

    goto :goto_6

    :cond_f
    const/4 v8, 0x3

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_6

    :goto_7
    invoke-direct {v0, v8, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v2, v13}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    if-eqz v9, :cond_10

    move/from16 v24, v7

    array-length v7, v4

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_8
    goto :goto_9

    :cond_10
    move/from16 v24, v7

    const/4 v7, 0x2

    if-ge v10, v7, :cond_11

    const/4 v7, 0x0

    goto :goto_8

    :cond_11
    const/4 v7, 0x2

    goto :goto_8

    :goto_9
    invoke-direct {v0, v7, v4, v5, v6}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    invoke-virtual {v3, v8}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    invoke-virtual {v1, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    invoke-virtual {v2, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    invoke-virtual {v3, v9}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    const-string v13, "Tonal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v4

    const-string v4, "Gradients: \n\tNormal "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\tDark "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n\tExtra dark: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    :cond_0
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method
