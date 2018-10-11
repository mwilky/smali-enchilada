.class public Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchBgNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextMatcher"


# instance fields
.field private mDensity:F

.field private mExtend:I

.field private mPeak:D

.field private mPos:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    return-void
.end method

.method private findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_1

    mul-int v3, v1, p3

    add-int/2addr v3, v2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p2, v3

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-wide v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    iput-wide v4, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v2, v6, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v1, v6, Landroid/graphics/Point;->y:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p3, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p4, v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p4, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_4
    return-void
.end method

.method private getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5

    new-array v0, p2, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    new-array v3, p1, [I

    mul-int v4, p1, v2

    invoke-static {p3, v4, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    invoke-direct {v4, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>([I)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    array-length v2, v0

    invoke-virtual {p4, v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object v0
.end method

.method private getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int v6, p1, v6

    div-int/2addr v6, v5

    int-to-float v7, v3

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    div-float/2addr v7, v8

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move/from16 v8, p2

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v9, p1, v8

    new-array v9, v9, [D

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_4

    if-eqz p6, :cond_0

    add-int v12, v11, p3

    goto :goto_1

    :cond_0
    sub-int v12, v11, p3

    add-int/2addr v12, v4

    sub-int/2addr v12, v8

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_2

    sget-object v10, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v14, 0x0

    :goto_3
    move v15, v14

    move v1, v15

    if-ge v1, v6, :cond_1

    move/from16 v16, v3

    int-to-float v3, v10

    move/from16 v17, v4

    int-to-float v4, v1

    move/from16 v18, v5

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int v4, v11, p1

    mul-int v5, v13, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v5

    move/from16 v19, v6

    int-to-double v5, v5

    aput-wide v5, v9, v4

    add-int/lit8 v14, v1, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_3

    :cond_1
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    const/4 v1, 0x0

    :goto_4
    iget v3, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    if-ge v1, v3, :cond_3

    int-to-float v3, v7

    int-to-float v4, v1

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    mul-int v4, v11, p1

    add-int v4, v4, p1

    iget v5, v0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v9, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    return-object v9
.end method

.method private grayScale(I)I
    .locals 0

    return p1
.end method

.method private spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p3, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p4, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p4, v2

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aget-object v3, p3, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v3, p4, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v3, p5, v2

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p5, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p6, v2

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p6, v2

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aget-object v3, p5, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v3, p6, v2

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/screenshot/longshot/transform/Complex;->divide(D)Lcom/oneplus/screenshot/longshot/transform/Complex;

    new-instance v3, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p5, v2

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p1, v2

    new-instance v3, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-object v4, p4, v2

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p6, v2

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private toInt([D)[I
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-wide v2, p1, v1

    double-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/oneplus/screenshot/longshot/transform/Complex;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchBgNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 34

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v8, v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v9, v0, v1

    const/16 v20, 0x0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v21

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->WIDTH_SAMPLE_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    div-int v0, v0, v21

    mul-int v0, v0, v21

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    add-int v15, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    mul-int v0, v15, v14

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/transform/Factory;->createTransform(I)Lcom/oneplus/screenshot/longshot/transform/FFT;

    move-result-object v13

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v12

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v11

    mul-int v0, v15, v14

    new-array v10, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    invoke-direct {v7, v10, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    invoke-interface {v13, v10}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v22

    mul-int v0, v15, v14

    new-array v6, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    invoke-direct {v7, v6, v11}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lcom/oneplus/screenshot/longshot/transform/Complex;[D)V

    invoke-interface {v13, v6}, Lcom/oneplus/screenshot/longshot/transform/FFT;->transform([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v23

    mul-int v0, v15, v14

    new-array v5, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    mul-int v0, v15, v14

    new-array v4, v0, [Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-object v0, v7

    move-object v1, v5

    move-object v2, v4

    move-object v3, v10

    move/from16 v24, v8

    move-object v8, v4

    move-object/from16 v4, v22

    move/from16 v25, v9

    move-object v9, v5

    move-object v5, v6

    move-object/from16 v26, v6

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->spectrum([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;)V

    invoke-interface {v13, v9}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v6

    invoke-interface {v13, v8}, Lcom/oneplus/screenshot/longshot/transform/FFT;->reverse([Lcom/oneplus/screenshot/longshot/transform/Complex;)[Lcom/oneplus/screenshot/longshot/transform/Complex;

    move-result-object v8

    invoke-direct {v7, v6, v8, v15, v14}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->findMisregistration([Lcom/oneplus/screenshot/longshot/transform/Complex;[Lcom/oneplus/screenshot/longshot/transform/Complex;II)V

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v14, v0

    add-int/lit8 v9, v0, -0x1

    add-int/lit8 v27, v14, -0x1

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v28, v14, v0

    invoke-direct {v7, v12}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v29

    invoke-direct {v7, v11}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    new-instance v1, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-direct {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    iget-object v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v16, 0x1

    move-object v4, v10

    move-object v10, v1

    move-object v5, v11

    move/from16 v11, v28

    move-object/from16 v30, v12

    move v12, v9

    move-object/from16 v31, v13

    move/from16 v13, v27

    move/from16 v32, v14

    move-object/from16 v14, v29

    move/from16 v33, v15

    move-object v15, v0

    move/from16 v17, v2

    move/from16 v18, v20

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v19}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    return-object v1
.end method
