.class public Lcom/oneplus/settings/opfinger/RectangleMask;
.super Landroid/graphics/drawable/Drawable;
.source "RectangleMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;,
        Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    }
.end annotation


# static fields
.field private static m_ScaleX:F

.field private static m_ScaleY:F


# instance fields
.field private dHeight:D

.field private dWidth:D

.field private m_Angle:F

.field private m_BottomLeft:Landroid/graphics/Point;

.field private m_BottomRight:Landroid/graphics/Point;

.field private m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

.field private m_Height:I

.field private m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

.field private final m_Paint:Landroid/graphics/Paint;

.field private m_Rect:Landroid/graphics/Rect;

.field private m_RectRotated:Landroid/graphics/Rect;

.field private m_TopLeft:Landroid/graphics/Point;

.field private m_TopRight:Landroid/graphics/Point;

.field private m_Width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomLeft:Landroid/graphics/Point;

    iput-object v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomRight:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopLeft:Landroid/graphics/Point;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopRight:Landroid/graphics/Point;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iput-wide v9, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    iget v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    mul-int v11, v9, v9

    mul-int v12, v10, v10

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    iget-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    double-to-int v11, v11

    iput v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    iget-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    double-to-int v11, v11

    iput v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    int-to-double v11, v8

    int-to-double v13, v7

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double/2addr v15, v13

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    div-double v3, v15, v17

    double-to-float v3, v3

    iput v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    add-int/2addr v4, v3

    iget v15, v1, Landroid/graphics/Point;->y:I

    iget v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    add-int/2addr v1, v15

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v15, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static setScale(FF)V
    .locals 0

    sput p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    sput p1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x0

    const/4 v8, 0x0

    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    iget-object v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/high16 v2, -0x1000000

    const/16 v3, 0x30

    const/16 v1, 0x5a

    :goto_0
    move v11, v1

    move v9, v2

    move v10, v3

    goto :goto_1

    :pswitch_0
    const/high16 v2, -0x10000

    const/16 v3, 0xff

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const/16 v3, 0x9f

    const/16 v4, 0xe3

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x90

    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xbc

    const/16 v3, 0x8f

    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/16 v3, 0x90

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    neg-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v12, v1, 0xc

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v1, v2

    float-to-int v13, v1

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v1, v2

    float-to-int v14, v1

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v1, v2

    float-to-int v15, v1

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v17

    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    add-int/lit8 v1, v16, -0x1

    sub-int/2addr v1, v15

    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v6

    add-int/lit8 v3, v16, -0x1

    sub-int/2addr v3, v13

    add-int/lit8 v4, v17, -0x1

    sub-int/2addr v4, v14

    :goto_2
    move v5, v1

    move/from16 v26, v3

    move v3, v2

    move/from16 v2, v26

    goto :goto_3

    :pswitch_3
    move v1, v13

    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v6

    move v3, v15

    add-int/lit8 v4, v17, -0x1

    sub-int/2addr v4, v14

    goto :goto_2

    :pswitch_4
    add-int/lit8 v1, v16, -0x1

    sub-int/2addr v1, v15

    move v2, v14

    add-int/lit8 v3, v16, -0x1

    sub-int/2addr v3, v13

    move v4, v6

    goto :goto_2

    :pswitch_5
    move v1, v13

    move v2, v14

    move v3, v15

    move v4, v6

    goto :goto_2

    :goto_3
    nop

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v18, v2

    int-to-float v2, v12

    sget v19, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float v2, v2, v19

    float-to-int v2, v2

    move/from16 v20, v2

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move/from16 v21, v3

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v19, v1

    move/from16 v22, v4

    :goto_4
    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move/from16 v22, v4

    const/16 v4, 0xff

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v19, v1

    goto :goto_4

    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz v8, :cond_2

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v15

    move/from16 v23, v5

    int-to-float v5, v14

    move/from16 v24, v6

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    move-object/from16 v19, v1

    move-object v1, v7

    move/from16 v25, v8

    move/from16 v8, v24

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    int-to-float v3, v8

    int-to-float v4, v15

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v15

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_2
    move-object/from16 v19, v1

    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    goto :goto_5

    :cond_3
    move-object/from16 v19, v1

    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v1, v2, :cond_4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v14, v13, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getMaskType()Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setMaskType(Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-void
.end method
