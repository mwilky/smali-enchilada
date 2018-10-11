.class public Lcom/oneplus/screenshot/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd-HHmmss"

.field public static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Longshot.Utils"

.field private static WATER_MARK:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v8, v1, v7

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v0, v6

    div-int/lit8 v9, v9, 0x2

    int-to-float v10, v9

    int-to-float v11, v8

    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const-string v5, "Longshot.Utils"

    const-string v10, "add water mark"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static addWatermarkForLongshot(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 14

    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/util/Utils;->genWaterMark(II)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v9, v4, v8

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v3, v7

    div-int/lit8 v10, v10, 0x2

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v9, v11, :cond_0

    int-to-float v11, v10

    int-to-float v12, v9

    const/4 v13, 0x0

    invoke-virtual {v6, v5, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v9, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const-string v11, "Longshot.Utils"

    const-string v12, "add watermark for longshot"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static dip2px(FF)I
    .locals 2

    mul-float v0, p1, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static dumpView(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Landroid/content/res/Resources;->resourceHasPackage(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    const/high16 v4, 0x1000000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x7f000000

    if-eq v3, v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    const-string v3, "app"

    goto :goto_0

    :cond_1
    const-string v3, "android"

    nop

    :goto_0
    nop

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static enableMoveTrace()Z
    .locals 2

    const-string v0, "true"

    const-string v1, "persist.tracing.move_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static genWaterMark(II)Landroid/graphics/Bitmap;
    .locals 27

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->WATERMARK_TIMES:I

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "OnePlus"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Confidential"

    const/4 v9, 0x1

    aput-object v7, v6, v9

    sget-object v7, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v7, v6, v10

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v7, "NEVER"

    aput-object v7, v6, v8

    const-string v7, "SETTLE"

    aput-object v7, v6, v9

    const-string v7, ""

    aput-object v7, v6, v10

    goto :goto_0

    :pswitch_1
    const-string v7, "no more"

    aput-object v7, v6, v8

    const-string v7, "watermark"

    aput-object v7, v6, v9

    const-string v7, ""

    aput-object v7, v6, v10

    nop

    :goto_0
    const v7, -0x777778

    const/4 v11, -0x1

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v4, v9, :cond_0

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    div-int/2addr v15, v5

    int-to-float v9, v15

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v9, 0x7f

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v14}, Landroid/graphics/Paint;->isAntiAlias()Z

    invoke-virtual {v14, v13, v12, v12, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v7, 0x40200000    # 2.5f

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    div-int/2addr v9, v10

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    div-int/2addr v11, v5

    int-to-float v11, v11

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v16

    add-float v12, v12, v16

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v13

    add-float/2addr v12, v13

    float-to-int v12, v12

    aget-object v13, v6, v8

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v15, 0x12c

    int-to-float v8, v15

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    div-int/lit8 v5, v12, 0x2

    sub-int/2addr v8, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {v14, v13, v1, v5, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v5, v9

    int-to-float v2, v8

    invoke-virtual {v3, v13, v5, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v5, v6, v2

    add-int v2, v8, v1

    add-int/lit8 v2, v2, 0x1d

    const/16 v15, 0xc8

    move/from16 v17, v1

    int-to-float v1, v15

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v5, v7, v1, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v7, v9

    move/from16 v19, v8

    int-to-float v8, v2

    invoke-virtual {v3, v5, v7, v8, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const/16 v8, 0x78

    add-int v15, v2, v1

    add-int/lit8 v15, v15, 0x5c

    move/from16 v20, v1

    int-to-float v1, v8

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v1, v9

    move/from16 v21, v2

    int-to-float v2, v15

    invoke-virtual {v3, v7, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    nop

    move/from16 v23, v4

    goto/16 :goto_2

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0xc8

    int-to-float v8, v2

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, 0x2

    if-ne v4, v8, :cond_1

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    if-ne v4, v5, :cond_2

    const/high16 v5, -0x10000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->isAntiAlias()Z

    invoke-virtual {v1, v13, v12, v12, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    const/4 v8, 0x2

    div-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    div-int/2addr v9, v8

    int-to-float v8, v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v13

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    aget-object v11, v6, v10

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    div-int/lit8 v13, v9, 0x2

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v1, v11, v14, v13, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v14, v7

    int-to-float v15, v12

    invoke-virtual {v3, v11, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v14, 0x1

    aget-object v15, v6, v14

    add-int v14, v12, v13

    add-int/lit8 v14, v14, 0x1d

    move/from16 v22, v2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v23, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v4, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v4, v7

    int-to-float v13, v14

    invoke-virtual {v3, v15, v4, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v4, 0x2

    aget-object v4, v6, v4

    add-int v13, v14, v2

    add-int/lit8 v13, v13, 0x5c

    move/from16 v24, v2

    const/16 v2, 0x33

    move-object/from16 v25, v5

    int-to-float v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v5, v7

    move/from16 v26, v2

    int-to-float v2, v13

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/oneplus/screenshot/util/Utils;->WATER_MARK:Landroid/graphics/Bitmap;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Longshot.Utils"

    const-string v3, "can\'t get IMEI"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getMoveTraceBitmap()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.tracing.move"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStitchLastTraceBitmap(Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "persist.tracing.stitchlast_l"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "persist.tracing.stitchlast_c"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final getStitchLastTraceBitmapFolder()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.tracing.stitchlast_f"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isEnableStitchLastTraceBitmap()Z
    .locals 2

    const-string v0, "true"

    const-string v1, "persist.tracing.stitchlast_e"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "Longshot.Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGallery, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Longshot.Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No OP_GALLERY_PACKAGE_NAME found, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Longshot.Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gallery app is not found, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z
    .locals 28

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "Longshot.Utils"

    const-string v3, "null bitmap"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/util/FileInfo;->getTime()J

    move-result-wide v12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v19, v5

    move-object/from16 v5, p1

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v5, p1

    goto/16 :goto_8

    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    move v2, v0

    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_ENCRYPT_IMAGE:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const-string v0, "\\."

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v19, v5

    const/16 v16, 0x0

    :try_start_3
    aget-object v5, v18, v16

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    const-string v0, ".jpg"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v20, v8

    const/16 v16, 0x0

    :try_start_4
    aget-object v8, v18, v16

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    const-string v0, ".png"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IMEI_NUMBER:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v0, "Longshot.Utils"

    move-object/from16 v22, v11

    const-string v11, " doencrypt s"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v5

    move-object/from16 v5, v21

    invoke-static {v0, v5, v11}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Longshot.Utils"

    const-string v11, " doencrypt e"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Longshot.Utils"

    const-string v11, " delete file s"

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v11, v0

    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "Longshot.Utils"

    move-object/from16 v24, v5

    const-string v5, " delete file e"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "\\."

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    aget-object v5, v5, v16

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    move-object v1, v0

    goto/16 :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    goto/16 :goto_8

    :cond_3
    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v22, v11

    :goto_2
    const-string v0, "_data"

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "datetaken"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_added"

    const-wide/16 v21, 0x3e8

    move-object/from16 v26, v10

    move-object/from16 v25, v11

    div-long v10, v12, v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_modified"

    div-long v10, v12, v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v17, :cond_4

    const-string v0, "mime_type"

    const-string v5, "image/png"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v0, "mime_type"

    const-string v5, "image/png"

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "width"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "height"

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v5, p1

    :try_start_7
    invoke-virtual {v5, v0}, Lcom/oneplus/screenshot/util/FileInfo;->setUri(Landroid/net/Uri;)V

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->available()I

    move-result v10

    const-string v11, "_size"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v11, "notifyMtp"

    move-object/from16 v27, v0

    const-string v0, "1"

    invoke-virtual {v1, v11, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v9, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-eqz v11, :cond_6

    :cond_5
    if-nez v2, :cond_7

    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    invoke-virtual {v6, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :cond_7
    const/4 v0, 0x1

    move/from16 v19, v0

    :goto_4
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_a

    :goto_5
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v5, p1

    :goto_6
    move-object v1, v0

    move-object/from16 v8, v20

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v5, p1

    :goto_7
    move-object/from16 v8, v20

    goto :goto_8

    :catchall_4
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    move-object v1, v0

    goto :goto_d

    :catch_7
    move-exception v0

    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v5, p1

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    :catch_8
    move-exception v0

    goto :goto_a

    :cond_8
    :goto_9
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    :goto_a
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :cond_9
    :goto_b
    nop

    :goto_c
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    nop

    const-string v0, "Longshot.Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end saveToFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v19

    :catchall_5
    move-exception v0

    move-object v1, v0

    :goto_d
    if-eqz v7, :cond_a

    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_f

    :cond_a
    :goto_e
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_10

    :goto_f
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_b
    :goto_10
    nop

    :goto_11
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    throw v1
.end method

.method public static scale(I)I
    .locals 0

    return p0
.end method

.method public static setThreadPriority()V
    .locals 0

    return-void
.end method

.method public static shouldDumpForMove()Z
    .locals 2

    const-string v0, "true"

    const-string v1, "persist.test.dumplongshotMove"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldDumpForTrace()Z
    .locals 2

    const-string v0, "persist.test.dumplongshot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static shouldDumpForTraceNext()Z
    .locals 2

    const-string v0, "persist.test.dumplongshotNext"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
