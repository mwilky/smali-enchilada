.class public Lcom/oneplus/screenshot/longshot/match/UndoMatcher;
.super Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.source "UndoMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 15

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v9, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v11, v10, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v12, 0x0

    move v1, v12

    :goto_0
    move v13, v1

    if-ge v13, v10, :cond_0

    new-instance v14, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v14

    move-object/from16 v2, p3

    move v4, v13

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v11, v13

    add-int/lit8 v1, v13, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v11

    invoke-virtual {v0, v11, v12, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object v11
.end method

.method private getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;
    .locals 15

    move-object/from16 v0, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v9, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    new-array v11, v10, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v12, 0x0

    move v1, v12

    :goto_0
    move v13, v1

    if-ge v13, v10, :cond_0

    new-instance v14, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v14

    move-object/from16 v2, p3

    move v4, v13

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v11, v13

    add-int/lit8 v1, v13, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v11

    invoke-virtual {v0, v11, v12, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    :cond_1
    return-object v11
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/oneplus/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Undo"

    return-object v0
.end method

.method public run(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;)Lcom/oneplus/screenshot/longshot/match/MatchData;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v3

    iget-object v4, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getLast(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->getCurr(ILcom/oneplus/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v14, v7

    move v7, v2

    :goto_1
    array-length v8, v4

    array-length v9, v3

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    if-eqz v14, :cond_1

    array-length v2, v3

    add-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    nop

    move v5, v6

    goto :goto_4

    :cond_1
    const/4 v8, 0x1

    move v9, v2

    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_3

    aget-object v10, v3, v9

    add-int v11, v9, v7

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    sget-object v10, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_UNDO:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v10}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_3
    :goto_3
    move v14, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_4
    new-instance v6, Lcom/oneplus/screenshot/longshot/match/MatchData;

    iget-object v7, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-direct {v6, v7, v8}, Lcom/oneplus/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    move-object v15, v6

    add-int/lit8 v8, v2, -0x1

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/oneplus/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    move v7, v2

    move v9, v5

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v6 .. v13}, Lcom/oneplus/screenshot/longshot/match/MatchData;->init(III[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;[Lcom/oneplus/screenshot/longshot/bitmap/Pixels;ZLcom/oneplus/screenshot/longshot/dump/BitmapDumper;)V

    return-object v15
.end method
