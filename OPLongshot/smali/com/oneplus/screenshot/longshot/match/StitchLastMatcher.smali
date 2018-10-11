.class public Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    }
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_5:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    nop

    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    const-string v0, "Longshot.StitchLastMatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StitchLastMatcher LEVEL_STITCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOffsetCurr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOffsetLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Longshot.StitchLastMatcher"

    const-string v5, "bottom value does exsit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "Longshot.StitchLastMatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTracingBitmapBottom :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_1
    move v1, v2

    :goto_2
    move-object v2, p0

    move-object v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v4, v1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v4, v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v10

    invoke-virtual {v7, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v7, v3, v9, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v5

    :cond_6
    :goto_4
    const-string v1, "Longshot.StitchLastMatcher"

    const-string v2, "incorrect bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTrace()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected varargs getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth([Landroid/graphics/Bitmap;)I

    move-result v3

    invoke-static/range {p4 .. p4}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight([Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int v4, v4, p3

    const/4 v5, 0x0

    move v6, v4

    new-array v7, v6, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    array-length v8, v2

    const/4 v9, 0x0

    move v10, v5

    move v5, v9

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v14, v2, v5

    move v13, v10

    move v10, v9

    :goto_1
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_0

    if-ge v13, v6, :cond_0

    add-int/lit8 v17, v13, 0x1

    new-instance v18, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int v15, v9, v11

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v11, v3, v11

    iget v12, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v16, v11, v12

    const/16 v19, 0x1

    move-object/from16 v11, v18

    move-object v12, v14

    move/from16 v20, v13

    move v13, v15

    move-object/from16 v21, v14

    move v14, v10

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v18, v7, v20

    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move-object/from16 v14, v21

    goto :goto_1

    :cond_0
    move/from16 v20, v13

    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v20

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    array-length v5, v7

    invoke-virtual {v1, v7, v9, v5}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    aget-object v5, v2, v9

    const/4 v8, 0x1

    aget-object v9, v2, v8

    invoke-static {v5, v9, v8}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tracing_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_current"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_2
    return-object v7
.end method

.method protected getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurr(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v3, v5

    move/from16 v7, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v6

    iput v6, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    new-array v6, v5, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    sub-int v8, v3, v5

    sub-int/2addr v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_0

    new-instance v17, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int v13, v9, v11

    add-int v14, v10, v8

    iget v11, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v11, v2, v11

    iget v12, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v15, v11, v12

    const/16 v16, 0x1

    move-object/from16 v11, v17

    move-object/from16 v12, p4

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v17, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v10, "Longshot.StitchLastMatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getLast pos start:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pos end:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v12, v8, v5

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bitmap h:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const-string v10, "tracing_0_last"

    move-object/from16 v11, p4

    invoke-virtual {v1, v11, v10}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    array-length v10, v6

    invoke-virtual {v1, v6, v9, v10}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v11, p4

    :goto_1
    return-object v6
.end method

.method protected getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLast(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .locals 1

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :pswitch_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :pswitch_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchLast"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.StitchLastMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " trace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "last"

    goto :goto_0

    :cond_0
    const-string v3, "currnet"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    return-object v1
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 35

    move-object/from16 v0, p0

    const-string v1, "StitchLastMatcher.match"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->isEnableStitchLastTraceBitmap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v4, v1, v2, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2}, Lcom/oneplus/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getTracingBitmapBottom(Ljava/lang/String;)I

    move-result v5

    if-eqz v1, :cond_1

    new-instance v6, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v6, v1, v2, v5}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object/from16 v4, p1

    move-object/from16 v1, p2

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    invoke-virtual {v0, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrOffset(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)I

    move-result v8

    invoke-virtual {v0, v7, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getLastPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    invoke-virtual {v0, v8, v1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->getCurrPixels(ILcom/oneplus/screenshot/longshot/cache/BitmapCache;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " get mapping Pixels cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    sub-long v3, v9, v5

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v13, 0x0

    const/16 v16, 0x0

    array-length v2, v15

    new-array v2, v2, [Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    const/16 v20, 0x0

    :goto_3
    move/from16 v21, v20

    move-object/from16 v22, v1

    array-length v1, v2

    move/from16 v23, v3

    move/from16 v3, v21

    if-ge v3, v1, :cond_3

    new-instance v1, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    move/from16 v24, v4

    aget-object v4, v15, v3

    invoke-direct {v1, v0, v3, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;-><init>(Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;ILcom/oneplus/screenshot/longshot/bitmap/Pixels;)V

    aput-object v1, v2, v3

    add-int/lit8 v20, v3, 0x1

    move-object/from16 v1, v22

    move/from16 v3, v23

    move/from16 v4, v24

    goto :goto_3

    :cond_3
    move/from16 v24, v4

    move v1, v13

    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_7

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->diff(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v2, v1

    invoke-virtual {v4, v3}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    const/4 v4, 0x0

    add-int/lit8 v13, v1, 0x1

    :goto_5
    move/from16 v25, v7

    array-length v7, v2

    if-ge v13, v7, :cond_6

    add-int/lit8 v4, v4, 0x1

    aget-object v7, v2, v1

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    move/from16 v26, v8

    aget-object v8, v2, v13

    invoke-virtual {v8}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, v2, v13

    invoke-virtual {v7, v3}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    add-int/lit8 v13, v13, 0x1

    array-length v7, v2

    if-ne v13, v7, :cond_4

    aget-object v7, v2, v1

    invoke-virtual {v7, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    :cond_4
    move/from16 v7, v25

    move/from16 v8, v26

    goto :goto_5

    :cond_5
    aget-object v7, v2, v1

    invoke-virtual {v7, v4}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    goto :goto_6

    :cond_6
    move/from16 v26, v8

    :goto_6
    move v1, v13

    nop

    move/from16 v7, v25

    move/from16 v8, v26

    goto :goto_4

    :cond_7
    move/from16 v25, v7

    move/from16 v26, v8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move/from16 v7, v16

    const/4 v4, 0x0

    :goto_7
    array-length v8, v2

    if-ge v4, v8, :cond_c

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v13, 0x0

    :goto_8
    move/from16 v27, v1

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v1

    if-ge v13, v1, :cond_8

    const-string v1, "-"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v13, v13, 0xa

    move/from16 v1, v27

    goto :goto_8

    :cond_8
    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v1

    aget-object v13, v2, v4

    invoke-virtual {v13}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v13

    if-lez v13, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v28, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-wide/from16 v29, v9

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_9
    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_a
    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v7, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v27

    move-wide/from16 v9, v29

    goto/16 :goto_7

    :cond_c
    move/from16 v27, v1

    move-wide/from16 v29, v9

    mul-int/lit8 v1, v7, 0x64

    array-length v4, v2

    div-int/2addr v1, v4

    const-string v4, "Longshot.StitchLastMatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "repeat rate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_a
    array-length v8, v15

    if-ge v4, v8, :cond_1d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    if-le v1, v10, :cond_12

    move v10, v9

    move v9, v4

    :goto_b
    array-length v13, v2

    if-ge v9, v13, :cond_11

    aget-object v13, v2, v9

    invoke-virtual {v13}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v13

    const/16 v16, 0x0

    move/from16 v31, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v32, v3

    move/from16 v33, v7

    :goto_c
    move/from16 v1, v16

    goto :goto_d

    :cond_d
    const-string v1, "Longshot.StitchLastMatcher"

    move-object/from16 v32, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v7

    const-string v7, "get repeatCount fail at:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :goto_d
    if-lez v10, :cond_f

    if-ge v1, v10, :cond_e

    invoke-interface {v8}, Ljava/util/List;->clear()V

    aget-object v3, v2, v9

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    move v10, v3

    goto :goto_e

    :cond_e
    if-ne v1, v10, :cond_10

    aget-object v3, v2, v9

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    nop

    move v10, v1

    :cond_10
    :goto_e
    iget v1, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v9, v1

    move/from16 v1, v31

    move-object/from16 v3, v32

    move/from16 v7, v33

    goto :goto_b

    :cond_11
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    move v9, v10

    goto :goto_f

    :cond_12
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    :goto_f
    const/4 v1, 0x0

    :goto_10
    array-length v3, v14

    array-length v7, v15

    sub-int/2addr v7, v4

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_1b

    if-eqz v11, :cond_13

    array-length v3, v15

    sub-int/2addr v3, v4

    add-int v7, v1, v3

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    nop

    move/from16 v24, v3

    move/from16 v23, v7

    goto/16 :goto_17

    :cond_13
    const/4 v3, 0x1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getIndex()I

    move-result v11

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v13

    add-int v16, v11, v1

    sub-int v16, v16, v4

    move/from16 v34, v3

    aget-object v3, v14, v16

    invoke-virtual {v13, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    nop

    move/from16 v34, v3

    goto :goto_12

    :cond_14
    nop

    move/from16 v3, v34

    goto :goto_11

    :cond_15
    move/from16 v34, v3

    :goto_12
    if-eqz v34, :cond_17

    move v3, v4

    :goto_13
    array-length v7, v15

    if-ge v3, v7, :cond_17

    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getChecked()Z

    move-result v7

    if-nez v7, :cond_16

    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    add-int v10, v3, v1

    sub-int/2addr v10, v4

    aget-object v10, v14, v10

    invoke-virtual {v7, v10}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const/16 v34, 0x0

    goto :goto_14

    :cond_16
    add-int/lit8 v12, v12, 0x1

    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v3, v7

    goto :goto_13

    :cond_17
    :goto_14
    if-eqz v34, :cond_19

    array-length v3, v15

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    aget-object v10, v15, v3

    add-int v11, v1, v3

    sub-int/2addr v11, v4

    aget-object v11, v14, v11

    invoke-virtual {v10, v11}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    const/16 v34, 0x0

    :cond_18
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_19
    const/4 v7, 0x1

    :goto_15
    move/from16 v11, v34

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    goto :goto_16

    :cond_1a
    const/4 v13, 0x0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_1b
    :goto_17
    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_1c

    nop

    move v7, v11

    move v4, v12

    move/from16 v3, v23

    move/from16 v1, v24

    goto :goto_18

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v31

    move-object/from16 v3, v32

    move/from16 v7, v33

    goto/16 :goto_a

    :cond_1d
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    move v7, v11

    move v4, v12

    move/from16 v3, v23

    move/from16 v1, v24

    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    const-string v8, "Longshot.StitchLastMatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " matched cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v19, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v8, "StitchLastMatcher.data.init"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    new-instance v8, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v9, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v10, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-direct {v8, v9, v10}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    add-int/lit8 v11, v1, -0x1

    const/16 v16, 0x1

    iget-object v13, v0, Lcom/oneplus/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object v9, v8

    move v10, v1

    move v12, v3

    move-object/from16 v17, v13

    move-object v13, v15

    move-object/from16 v21, v14

    move-object/from16 v23, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " data.init cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v9, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "matched pos:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " matched:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method
