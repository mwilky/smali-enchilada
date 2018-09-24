.class public Lcom/android/systemui/OPBatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "OPBatteryMeterDrawable.java"


# instance fields
.field private mBatteryStyle:I

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mHeight:I

.field private mInStatusBar:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLog:Z

.field private mPluggedIn:Z

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLog:Z

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->resetUITimes:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    iput-boolean v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mInStatusBar:Z

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/OPBatteryMeterDrawable;->initCircleSize(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getBatteryLevel()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getCharging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v5

    :goto_0
    iget-object v6, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v7

    :goto_1
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v7

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v15, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v16, 0x43870000    # 270.0f

    const v6, 0x40666666    # 3.6f

    int-to-float v7, v3

    mul-float v17, v6, v7

    const/16 v18, 0x0

    iget-object v6, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object/from16 v14, p1

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    if-eqz v4, :cond_3

    iget-object v7, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, p1

    :goto_3
    return-void
.end method

.method private initCircleSize(II)V
    .locals 7

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40d00000    # 6.5f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v2, v4

    div-float v4, v0, v3

    iget v5, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v5, v5

    div-float v6, v0, v3

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v3, v0, v3

    sub-float/2addr v6, v3

    iget-object v3, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static synthetic lambda$ZGLdmSrsNDE85YjKwp_BFkbxOn8(Lcom/android/systemui/OPBatteryMeterDrawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private postInvalidate(I)V
    .locals 3

    new-instance v0, Lcom/android/systemui/-$$Lambda$OPBatteryMeterDrawable$ZGLdmSrsNDE85YjKwp_BFkbxOn8;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$OPBatteryMeterDrawable$ZGLdmSrsNDE85YjKwp_BFkbxOn8;-><init>(Lcom/android/systemui/OPBatteryMeterDrawable;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/OPBatteryMeterDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getBatteryLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->draw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/OPBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->resetUITimes:I

    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBounds(IIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/OPBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColors(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColors(II)V

    return-void
.end method
