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
    .param p1, "top_left"    # Landroid/graphics/Point;
    .param p2, "top_right"    # Landroid/graphics/Point;
    .param p3, "bottom_left"    # Landroid/graphics/Point;
    .param p4, "bottom_right"    # Landroid/graphics/Point;
    .param p5, "mask"    # Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;
    .param p6, "flip"    # Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 38
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomLeft:Landroid/graphics/Point;

    .line 40
    iput-object v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_BottomRight:Landroid/graphics/Point;

    .line 41
    iput-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopLeft:Landroid/graphics/Point;

    .line 42
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_TopRight:Landroid/graphics/Point;

    .line 43
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 44
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    .line 45
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    .line 46
    .local v7, "dx1":I
    iget v8, v3, Landroid/graphics/Point;->y:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    .line 47
    .local v8, "dy1":I
    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    iput-wide v9, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    .line 48
    iget v9, v2, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    .line 49
    .local v9, "dx2":I
    iget v10, v1, Landroid/graphics/Point;->y:I

    iget v11, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    .line 50
    .local v10, "dy2":I
    mul-int v11, v9, v9

    mul-int v12, v10, v10

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    iput-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    .line 51
    iget-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dWidth:D

    double-to-int v11, v11

    iput v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    .line 52
    iget-wide v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->dHeight:D

    double-to-int v11, v11

    iput v11, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    .line 53
    int-to-double v11, v8

    int-to-double v13, v7

    div-double/2addr v11, v13

    .line 54
    .local v11, "dTan":D
    invoke-static {v11, v12}, Ljava/lang/Math;->tan(D)D

    move-result-wide v13

    .line 55
    .local v13, "dRad":D
    const-wide v15, 0x4066800000000000L    # 180.0

    mul-double/2addr v15, v13

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    div-double v3, v15, v17

    double-to-float v3, v3

    iput v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    .line 56
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 57
    .local v3, "iLeft":I
    iget v4, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Width:I

    add-int/2addr v4, v3

    .line 58
    .local v4, "iRight":I
    iget v15, v1, Landroid/graphics/Point;->y:I

    .line 59
    .local v15, "iTop":I
    iget v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Height:I

    add-int/2addr v1, v15

    .line 60
    .local v1, "iBottom":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v15, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    .line 61
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    .line 62
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    return-void
.end method

.method public static setScale(FF)V
    .locals 0
    .param p0, "fScaleX"    # F
    .param p1, "fScaleY"    # F

    .line 222
    sput p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    .line 223
    sput p1, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    .line 224
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    .line 74
    move-object/from16 v7, p1

    const/4 v1, 0x0

    .line 75
    .local v1, "iRotate":I
    const/4 v8, 0x0

    .line 76
    .local v8, "bFrame":Z
    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$MaskType:[I

    iget-object v3, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 95
    const/high16 v2, -0x1000000

    .line 96
    .local v2, "iColor":I
    const/16 v3, 0x30

    .line 97
    .local v3, "iAlpha":I
    const/16 v1, 0x5a

    .line 101
    .end local v1    # "iRotate":I
    .end local v2    # "iColor":I
    .end local v3    # "iAlpha":I
    .local v9, "iColor":I
    .local v10, "iAlpha":I
    .local v11, "iRotate":I
    :goto_0
    move v11, v1

    move v9, v2

    move v10, v3

    goto :goto_1

    .line 90
    .end local v9    # "iColor":I
    .end local v10    # "iAlpha":I
    .end local v11    # "iRotate":I
    .restart local v1    # "iRotate":I
    :pswitch_0
    const/high16 v2, -0x10000

    .line 91
    .restart local v2    # "iColor":I
    const/16 v3, 0xff

    .line 92
    .restart local v3    # "iAlpha":I
    goto :goto_0

    .line 85
    .end local v2    # "iColor":I
    .end local v3    # "iAlpha":I
    :pswitch_1
    const/4 v2, 0x0

    const/16 v3, 0x9f

    const/16 v4, 0xe3

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 86
    .restart local v2    # "iColor":I
    const/16 v3, 0x90

    .line 87
    .restart local v3    # "iAlpha":I
    const/16 v1, 0x5a

    .line 88
    goto :goto_0

    .line 78
    .end local v2    # "iColor":I
    .end local v3    # "iAlpha":I
    :pswitch_2
    const/16 v2, 0xbc

    const/16 v3, 0x8f

    invoke-static {v3, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    .line 82
    .restart local v2    # "iColor":I
    const/16 v3, 0x90

    .line 83
    .restart local v3    # "iAlpha":I
    goto :goto_0

    .line 101
    .end local v1    # "iRotate":I
    .end local v2    # "iColor":I
    .end local v3    # "iAlpha":I
    .restart local v9    # "iColor":I
    .restart local v10    # "iAlpha":I
    .restart local v11    # "iRotate":I
    :goto_1
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    iget v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Angle:F

    neg-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v12, v1, 0xc

    .line 106
    .local v12, "FRAME_LINE_WIDTH":I
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v1, v2

    float-to-int v13, v1

    .line 107
    .local v13, "iRectLeft":I
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v1, v2

    float-to-int v14, v1

    .line 108
    .local v14, "iRectTop":I
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float/2addr v1, v2

    float-to-int v15, v1

    .line 109
    .local v15, "iRectRight":I
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sget v2, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleY:F

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 114
    .local v6, "iRectBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    .line 115
    .local v16, "iCanvasWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v17

    .line 117
    .local v17, "iCanvasHeight":I
    sget-object v1, Lcom/oneplus/settings/opfinger/RectangleMask$1;->$SwitchMap$com$oneplus$settings$opfinger$RectangleMask$FlipType:[I

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Flip:Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/RectangleMask$FlipType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 141
    add-int/lit8 v1, v16, -0x1

    sub-int/2addr v1, v15

    .line 142
    .local v1, "iRectFlippedLeft":I
    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v6

    .line 143
    .local v2, "iRectFlippedTop":I
    add-int/lit8 v3, v16, -0x1

    sub-int/2addr v3, v13

    .line 144
    .local v3, "iRectFlippedRight":I
    add-int/lit8 v4, v17, -0x1

    sub-int/2addr v4, v14

    .end local v1    # "iRectFlippedLeft":I
    .local v2, "iRectFlippedRight":I
    .local v3, "iRectFlippedTop":I
    .local v4, "iRectFlippedBottom":I
    .local v5, "iRectFlippedLeft":I
    :goto_2
    move v5, v1

    move/from16 v26, v3

    move v3, v2

    move/from16 v2, v26

    goto :goto_3

    .line 133
    .end local v2    # "iRectFlippedRight":I
    .end local v3    # "iRectFlippedTop":I
    .end local v4    # "iRectFlippedBottom":I
    .end local v5    # "iRectFlippedLeft":I
    :pswitch_3
    move v1, v13

    .line 134
    .restart local v1    # "iRectFlippedLeft":I
    add-int/lit8 v2, v17, -0x1

    sub-int/2addr v2, v6

    .line 135
    .local v2, "iRectFlippedTop":I
    move v3, v15

    .line 136
    .local v3, "iRectFlippedRight":I
    add-int/lit8 v4, v17, -0x1

    sub-int/2addr v4, v14

    .line 137
    .restart local v4    # "iRectFlippedBottom":I
    goto :goto_2

    .line 126
    .end local v1    # "iRectFlippedLeft":I
    .end local v2    # "iRectFlippedTop":I
    .end local v3    # "iRectFlippedRight":I
    .end local v4    # "iRectFlippedBottom":I
    :pswitch_4
    add-int/lit8 v1, v16, -0x1

    sub-int/2addr v1, v15

    .line 127
    .restart local v1    # "iRectFlippedLeft":I
    move v2, v14

    .line 128
    .restart local v2    # "iRectFlippedTop":I
    add-int/lit8 v3, v16, -0x1

    sub-int/2addr v3, v13

    .line 129
    .restart local v3    # "iRectFlippedRight":I
    move v4, v6

    .line 130
    .restart local v4    # "iRectFlippedBottom":I
    goto :goto_2

    .line 119
    .end local v1    # "iRectFlippedLeft":I
    .end local v2    # "iRectFlippedTop":I
    .end local v3    # "iRectFlippedRight":I
    .end local v4    # "iRectFlippedBottom":I
    :pswitch_5
    move v1, v13

    .line 120
    .restart local v1    # "iRectFlippedLeft":I
    move v2, v14

    .line 121
    .restart local v2    # "iRectFlippedTop":I
    move v3, v15

    .line 122
    .restart local v3    # "iRectFlippedRight":I
    move v4, v6

    .line 123
    .restart local v4    # "iRectFlippedBottom":I
    goto :goto_2

    .line 144
    .end local v1    # "iRectFlippedLeft":I
    .local v2, "iRectFlippedRight":I
    .local v3, "iRectFlippedTop":I
    .restart local v5    # "iRectFlippedLeft":I
    :goto_3
    nop

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v1, "rectFlipped":Landroid/graphics/Rect;
    move/from16 v18, v2

    int-to-float v2, v12

    .end local v2    # "iRectFlippedRight":I
    .local v18, "iRectFlippedRight":I
    sget v19, Lcom/oneplus/settings/opfinger/RectangleMask;->m_ScaleX:F

    mul-float v2, v2, v19

    float-to-int v2, v2

    .line 150
    .local v2, "iFrameWidth":I
    move/from16 v20, v2

    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .end local v2    # "iFrameWidth":I
    .local v20, "iFrameWidth":I
    move/from16 v21, v3

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NormalMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .end local v3    # "iRectFlippedTop":I
    .local v21, "iRectFlippedTop":I
    if-ne v2, v3, :cond_0

    .line 151
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    move-object/from16 v19, v1

    move/from16 v22, v4

    .end local v1    # "rectFlipped":Landroid/graphics/Rect;
    .end local v4    # "iRectFlippedBottom":I
    .end local v5    # "iRectFlippedLeft":I
    .end local v6    # "iRectBottom":I
    .local v8, "iRectBottom":I
    .local v19, "rectFlipped":Landroid/graphics/Rect;
    .local v22, "iRectFlippedBottom":I
    .local v23, "iRectFlippedLeft":I
    .local v25, "bFrame":Z
    :goto_4
    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    goto/16 :goto_5

    .line 152
    .end local v19    # "rectFlipped":Landroid/graphics/Rect;
    .end local v22    # "iRectFlippedBottom":I
    .end local v23    # "iRectFlippedLeft":I
    .end local v25    # "bFrame":Z
    .restart local v1    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v4    # "iRectFlippedBottom":I
    .restart local v5    # "iRectFlippedLeft":I
    .restart local v6    # "iRectBottom":I
    .local v8, "bFrame":Z
    :cond_0
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->NextMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    move/from16 v22, v4

    const/16 v4, 0xff

    .end local v4    # "iRectFlippedBottom":I
    .restart local v22    # "iRectFlippedBottom":I
    if-ne v2, v3, :cond_1

    .line 153
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    move-object/from16 v19, v1

    goto :goto_4

    .line 173
    :cond_1
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v3, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->LatestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v2, v3, :cond_3

    .line 174
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 175
    if-eqz v8, :cond_2

    .line 176
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v15

    move/from16 v23, v5

    int-to-float v5, v14

    .end local v5    # "iRectFlippedLeft":I
    .restart local v23    # "iRectFlippedLeft":I
    move/from16 v24, v6

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    .end local v6    # "iRectBottom":I
    .local v24, "iRectBottom":I
    move-object/from16 v19, v1

    move-object v1, v7

    .end local v1    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v19    # "rectFlipped":Landroid/graphics/Rect;
    move/from16 v25, v8

    move/from16 v8, v24

    .end local v24    # "iRectBottom":I
    .local v8, "iRectBottom":I
    .restart local v25    # "bFrame":Z
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    int-to-float v2, v13

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 183
    int-to-float v2, v13

    int-to-float v3, v8

    int-to-float v4, v15

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 185
    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v15

    int-to-float v5, v8

    iget-object v6, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 192
    .end local v19    # "rectFlipped":Landroid/graphics/Rect;
    .end local v23    # "iRectFlippedLeft":I
    .end local v25    # "bFrame":Z
    .restart local v1    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v5    # "iRectFlippedLeft":I
    .restart local v6    # "iRectBottom":I
    .local v8, "bFrame":Z
    :cond_2
    move-object/from16 v19, v1

    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    .end local v1    # "rectFlipped":Landroid/graphics/Rect;
    .end local v5    # "iRectFlippedLeft":I
    .end local v6    # "iRectBottom":I
    .local v8, "iRectBottom":I
    .restart local v19    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v23    # "iRectFlippedLeft":I
    .restart local v25    # "bFrame":Z
    goto :goto_5

    .line 188
    .end local v19    # "rectFlipped":Landroid/graphics/Rect;
    .end local v23    # "iRectFlippedLeft":I
    .end local v25    # "bFrame":Z
    .restart local v1    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v5    # "iRectFlippedLeft":I
    .restart local v6    # "iRectBottom":I
    .local v8, "bFrame":Z
    :cond_3
    move-object/from16 v19, v1

    move/from16 v23, v5

    move/from16 v25, v8

    move v8, v6

    .end local v1    # "rectFlipped":Landroid/graphics/Rect;
    .end local v5    # "iRectFlippedLeft":I
    .end local v6    # "iRectBottom":I
    .local v8, "iRectBottom":I
    .restart local v19    # "rectFlipped":Landroid/graphics/Rect;
    .restart local v23    # "iRectFlippedLeft":I
    .restart local v25    # "bFrame":Z
    iget-object v1, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    sget-object v2, Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;->TestMask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    if-ne v1, v2, :cond_4

    .line 189
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v14, v13, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 192
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_4
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
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

    .line 214
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 209
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 211
    return-void
.end method

.method public setMaskType(Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;)V
    .locals 0
    .param p1, "mask"    # Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 218
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/RectangleMask;->m_Mask:Lcom/oneplus/settings/opfinger/RectangleMask$MaskType;

    .line 219
    return-void
.end method
