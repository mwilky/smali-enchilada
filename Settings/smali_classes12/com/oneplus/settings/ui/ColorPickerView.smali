.class public Lcom/oneplus/settings/ui/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RESTRICT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorPickerView"


# instance fields
.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHueIndicatorPaint:Landroid/graphics/Paint;

.field private mHueIndicatorWidth:F

.field private mHueInidcatorOffset:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHuePanelHeight:F

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mIndicatorBlurRadius:F

.field private mIndicatorBorderWidth:F

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

.field private mMarginLeft:F

.field private mMarginTop:F

.field private mMinHeight:F

.field private mMinWidth:F

.field private mPadding:F

.field private mPanelSpacing:F

.field private mPanelWidth:F

.field private mSVIndicatorPaint:Landroid/graphics/Paint;

.field private mSVIndicatorWidth:F

.field private mSVPanelHeight:F

.field private mSat:F

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    .line 68
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    .line 70
    iput v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    .line 90
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->init()V

    .line 94
    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 233
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    .line 234
    const/16 v1, 0x169

    new-array v1, v1, [I

    .line 235
    .local v1, "hue":[I
    const/4 v2, 0x0

    .line 236
    .local v2, "count":I
    const/4 v3, 0x0

    move v10, v2

    move v2, v3

    .local v2, "i":I
    .local v10, "count":I
    :goto_0
    array-length v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_0

    .line 237
    const/4 v4, 0x3

    new-array v4, v4, [F

    int-to-float v6, v2

    aput v6, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v1, v10

    .line 236
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 239
    .end local v2    # "i":I
    :cond_0
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 247
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 250
    .end local v1    # "hue":[I
    .end local v10    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 252
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 253
    .local v1, "halfHueIndicatorWidth":F
    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v2

    .line 256
    .local v2, "p":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 257
    .local v3, "r":Landroid/graphics/RectF;
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 258
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 259
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 260
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 262
    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 184
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->generateSVShader()Landroid/graphics/ComposeShader;

    move-result-object v0

    .line 186
    .local v0, "mShader":Landroid/graphics/ComposeShader;
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/ui/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v1

    .line 192
    .local v1, "p":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 193
    .local v2, "rect":Landroid/graphics/RectF;
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 194
    .local v3, "halfWidth":F
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 195
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 196
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 197
    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 199
    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    iget-object v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method private generateRestrictedSVShader()Landroid/graphics/ComposeShader;
    .locals 11

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    const v7, -0xaaaaab

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 210
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 211
    .local v0, "rgb":I
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const v8, -0x555556

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    move v9, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 214
    .local v1, "satShader":Landroid/graphics/Shader;
    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    return-object v2
.end method

.method private generateSVShader()Landroid/graphics/ComposeShader;
    .locals 11

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 223
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 224
    .local v0, "rgb":I
    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const/4 v8, -0x1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    move v9, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 227
    .local v1, "satShader":Landroid/graphics/Shader;
    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    return-object v2
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 6
    .param p1, "hue"    # F

    .line 267
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 268
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 270
    .local v1, "width":F
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 271
    .local v2, "p":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 272
    iget v3, v0, Landroid/graphics/RectF;->left:F

    mul-float v4, p1, v1

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 273
    return-object v2
.end method

.method private init()V
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    .line 100
    const v1, 0x7f0703ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    .line 102
    const-string v1, "ColorPickerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panel width 375dp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v1, "ColorPickerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device width pixels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const v1, 0x7f0703ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    .line 108
    const v1, 0x7f070259

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    .line 109
    const v1, 0x7f070257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginLeft:F

    .line 111
    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    .line 112
    const v1, 0x7f0703e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVPanelHeight:F

    .line 114
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelWidth:F

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    .line 115
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVPanelHeight:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    .line 117
    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorCornerRadius:F

    .line 118
    const v1, 0x7f07014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    .line 119
    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    .line 120
    const v1, 0x7f0601c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    .line 121
    const v1, 0x7f070146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorWidth:F

    .line 122
    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueInidcatorOffset:F

    .line 123
    const v1, 0x7f0703df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorWidth:F

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->initPaintTools()V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 128
    return-void
.end method

.method private initPaintTools()V
    .locals 5

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    const v3, -0x777778

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBorderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mIndicatorBlurRadius:F

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 146
    return-void
.end method

.method private static isUnspecified(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 167
    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pointToHue(F)F
    .locals 3
    .param p1, "x"    # F

    .line 342
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 343
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 345
    .local v1, "width":F
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 346
    const/4 p1, 0x0

    goto :goto_0

    .line 347
    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 348
    move p1, v1

    goto :goto_0

    .line 350
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    .line 352
    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 315
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 316
    .local v0, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 318
    .local v1, "result":[F
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 319
    .local v2, "width":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 321
    .local v3, "height":F
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 322
    const/4 p1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 324
    move p1, v2

    goto :goto_0

    .line 326
    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    .line 329
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 330
    const/4 p2, 0x0

    goto :goto_1

    .line 331
    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 332
    move p2, v3

    goto :goto_1

    .line 334
    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    .line 336
    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    mul-float/2addr v6, p1

    aput v6, v1, v4

    .line 337
    const/4 v4, 0x1

    div-float v6, v5, v3

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    aput v5, v1, v4

    .line 338
    return-object v1
.end method

.method private pointToSatValRestrictedMode(FF)[F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 289
    .local v0, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 291
    .local v1, "result":[F
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 292
    .local v2, "width":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 294
    .local v3, "height":F
    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 295
    const/4 p1, 0x0

    goto :goto_0

    .line 296
    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 297
    move p1, v2

    goto :goto_0

    .line 299
    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    .line 302
    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 303
    const/4 p2, 0x0

    goto :goto_1

    .line 304
    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 305
    move p2, v3

    goto :goto_1

    .line 307
    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    .line 309
    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    mul-float/2addr v6, p1

    aput v6, v1, v4

    .line 310
    const/4 v4, 0x1

    div-float v6, v5, v3

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    aput v5, v1, v4

    .line 311
    return-object v1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 5
    .param p1, "sat"    # F
    .param p2, "val"    # F

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 279
    .local v0, "height":F
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 281
    .local v1, "width":F
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 282
    .local v2, "p":Landroid/graphics/Point;
    mul-float v3, p1, v1

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 283
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 284
    return-object v2
.end method

.method private setupHueRect()V
    .locals 6

    .line 434
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 435
    .local v0, "dRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 436
    .local v1, "left":F
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 437
    .local v2, "top":F
    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v3, v2

    .line 438
    .local v3, "bottom":F
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 439
    .local v4, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 440
    return-void
.end method

.method private setupSatValRect()V
    .locals 6

    .line 425
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 426
    .local v0, "dRect":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 427
    .local v1, "left":F
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHuePanelHeight:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPanelSpacing:F

    add-float/2addr v2, v3

    .line 428
    .local v2, "top":F
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMarginTop:F

    sub-float/2addr v3, v4

    .line 429
    .local v3, "bottom":F
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 430
    .local v4, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 431
    return-void
.end method

.method private updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 382
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 384
    .local v0, "update":Z
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 385
    .local v2, "startX":I
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 386
    .local v3, "startY":I
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerView;->pointToHue(F)F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    .line 389
    const/4 v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/ui/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v4

    .line 398
    .local v4, "result":[F
    aget v1, v4, v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    .line 399
    const/4 v1, 0x1

    aget v1, v4, v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    .line 400
    const/4 v0, 0x1

    .line 402
    .end local v4    # "result":[F
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getColor()I
    .locals 3

    .line 448
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 175
    return-void

    .line 172
    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 152
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 153
    .local v2, "widthSpecified":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 155
    .local v3, "heightSpecified":I
    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerView;->isUnspecified(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinWidth:F

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v2, v4

    .line 156
    invoke-static {v0}, Lcom/oneplus/settings/ui/ColorPickerView;->isUnspecified(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mMinHeight:F

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move v3, v4

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/oneplus/settings/ui/ColorPickerView;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 408
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 414
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 415
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 416
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 417
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 418
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mPadding:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 420
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setupSatValRect()V

    .line 421
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setupHueRect()V

    .line 422
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "isUpdated":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 364
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 365
    goto :goto_0

    .line 367
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    .line 368
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 360
    :pswitch_2
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mTouchPoint:Landroid/graphics/Point;

    .line 361
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerView;->updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 362
    nop

    .line 371
    :goto_0
    if-eqz v0, :cond_1

    .line 372
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v5, v3, v4

    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    aput v4, v3, v2

    const/4 v4, 0x2

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    aput v5, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->invalidate()V

    .line 376
    return v2

    .line 378
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(IZ)V

    .line 453
    return-void
.end method

.method public setColor(IZ)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "callback"    # Z

    .line 456
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 457
    .local v1, "hsv":[F
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 458
    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    .line 459
    const/4 v3, 0x1

    aget v4, v1, v3

    iput v4, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    .line 460
    const/4 v4, 0x2

    aget v5, v1, v4

    iput v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    .line 461
    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 462
    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    new-array v0, v0, [F

    iget v6, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    aput v6, v0, v2

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    aput v2, v0, v3

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    aput v2, v0, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-interface {v5, v0}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerView;->invalidate()V

    .line 465
    return-void
.end method

.method public setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    .line 443
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    .line 444
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mHue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mSat:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerView;->mVal:F

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 445
    return-void
.end method
