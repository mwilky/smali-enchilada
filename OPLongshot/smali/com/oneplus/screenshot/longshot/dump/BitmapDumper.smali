.class public abstract Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.super Ljava/lang/Object;
.source "BitmapDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "Dump"

.field public static DIV_COLOR:I = 0x0

.field public static DIV_HEIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BitmapDumper"

.field public static final TAG_CURR:Ljava/lang/String; = "Curr"

.field public static final TAG_LAST:Ljava/lang/String; = "Last"

.field public static final TAG_NEXT:Ljava/lang/String; = "Next"

.field public static final TAG_PREV:Ljava/lang/String; = "Prev"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field protected mIsNext:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    const v0, -0xffff01

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    return-void
.end method

.method private getCombinedTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    if-eqz v1, :cond_0

    const-string v1, "Next"

    goto :goto_0

    :cond_0
    const-string v1, "Prev"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v2, "Dump"

    invoke-direct {v1, v2, p2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    :cond_1
    return-void
.end method

.method public dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v10

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v11

    new-array v12, v11, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/graphics/Bitmap;

    move v15, v4

    :goto_1
    move v9, v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v9, v4, :cond_3

    add-int/lit8 v16, v15, 0x1

    new-instance v17, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v6, 0x0

    const/16 v18, 0x1

    move-object/from16 v4, v17

    move-object v5, v14

    move v7, v9

    move v8, v10

    move/from16 v19, v9

    move/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v17, v12, v15

    add-int/lit8 v6, v19, 0x1

    move/from16 v15, v16

    goto :goto_1

    :cond_3
    nop

    move v4, v15

    goto :goto_0

    :cond_4
    array-length v5, v12

    move-object/from16 v7, p0

    invoke-virtual {v7, v12, v6, v5}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_2

    :cond_5
    move-object/from16 v7, p0

    :goto_2
    return-void
.end method

.method public dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .locals 9

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v1

    array-length v1, v1

    move v2, p3

    mul-int v3, v1, v2

    new-array v3, v3, [I

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_0

    add-int v5, v4, p2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v6

    mul-int v7, v1, v4

    invoke-virtual {v5}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v8

    array-length v8, v8

    invoke-static {v6, v0, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v6, "Dump"

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getCombinedTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5, v0}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-void
.end method
