.class public Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "StitchNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextMatcher"


# instance fields
.field protected mExtendCurr:I

.field protected mExtendLast:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_NEXT:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_4:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_3:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    nop

    :goto_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_NEXT_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    iget v7, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v7, v6

    add-int v7, v7, p1

    if-eqz p6, :cond_0

    add-int v7, v7, p2

    goto :goto_1

    :cond_0
    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    mul-int/2addr v8, v3

    sub-int v8, v2, v8

    sub-int v8, v8, p2

    add-int/2addr v7, v8

    :goto_1
    new-instance v14, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    add-int v10, v5, v8

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLeftSideOffset:I

    sub-int v8, v1, v8

    iget v9, v0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mRightSideOffset:I

    sub-int v12, v8, v9

    const/4 v13, 0x1

    move-object v8, v14

    move-object/from16 v9, p4

    move v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->shouldDumpForTraceNext()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getStep()I
    .locals 2

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->LEVEL_STITCH_NEXT:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_NEXT_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchNext"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 29

    move-object/from16 v7, p0

    const-string v0, "StitchNextMatcher.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v8, v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSize:I

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    div-int v9, v0, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/4 v1, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move v3, v9

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_current"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "getNext_last"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_1
    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_0
    move v6, v0

    iget v0, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    if-ge v6, v0, :cond_8

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    const/16 v17, 0x0

    move-object v0, v7

    move v1, v6

    move v3, v8

    move/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->getLines(IIILandroid/graphics/Bitmap;Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;Z)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    move/from16 v1, v16

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-object v2, v0, v1

    aget-object v3, v15, v16

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move/from16 v2, v16

    :goto_2
    add-int v5, v1, v2

    array-length v6, v0

    if-ge v5, v6, :cond_2

    array-length v5, v15

    if-ge v2, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int v5, v1, v2

    aget-object v5, v0, v5

    aget-object v6, v15, v2

    invoke-virtual {v5, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    div-int v2, v4, v3

    const/4 v5, 0x1

    if-ge v2, v5, :cond_3

    goto :goto_5

    :cond_3
    if-ge v11, v4, :cond_6

    const/4 v2, 0x0

    array-length v6, v0

    sub-int/2addr v6, v4

    const/16 v17, 0x1

    move/from16 v19, v16

    :goto_3
    move/from16 v25, v19

    move/from16 v26, v3

    move/from16 v5, v25

    add-int v3, v2, v5

    move/from16 v27, v2

    array-length v2, v15

    if-ge v3, v2, :cond_5

    add-int v2, v6, v5

    array-length v3, v0

    if-ge v2, v3, :cond_5

    if-ge v5, v4, :cond_5

    add-int v25, v6, v5

    aget-object v2, v0, v25

    aget-object v3, v15, v5

    move/from16 v28, v6

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v17, 0x0

    goto :goto_4

    :cond_4
    add-int/lit8 v19, v5, 0x1

    move/from16 v3, v26

    move/from16 v2, v27

    move/from16 v6, v28

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move/from16 v28, v6

    :goto_4
    if-eqz v17, :cond_6

    move v11, v4

    array-length v2, v0

    const/4 v3, 0x1

    add-int/lit8 v12, v2, -0x1

    add-int/lit8 v13, v11, -0x1

    move-object v14, v0

    move/from16 v10, v18

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v18, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mContext:Landroid/content/Context;

    iget v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mIndex:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    const-string v1, "Longshot.StitchNextMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StitchNextMatcher run posCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " posLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " matched:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sizeLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sizeCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mExtendLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mExtendCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineLast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lineCurr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "StitchNextMatcher.data.init"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v21, 0x1

    iget v1, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mStep:I

    iget-object v2, v7, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move-object v3, v15

    move-object v15, v0

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v3

    move/from16 v22, v1

    move/from16 v23, v10

    move-object/from16 v24, v2

    invoke-virtual/range {v15 .. v24}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZIILcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0
.end method
