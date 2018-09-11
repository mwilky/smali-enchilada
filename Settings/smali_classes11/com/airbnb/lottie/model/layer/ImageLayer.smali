.class public Lcom/airbnb/lottie/model/layer/ImageLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "ImageLayer.java"


# instance fields
.field private final density:F

.field private final dst:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;

.field private final src:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;F)V
    .locals 2
    .param p1, "lottieDrawable"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p2, "layerModel"    # Lcom/airbnb/lottie/model/layer/Layer;
    .param p3, "density"    # F

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    .line 24
    iput p3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->density:F

    .line 25
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->layerModel:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->getRefId()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "refId":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 65
    return-void
.end method

.method public drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p3, "parentAlpha"    # I

    .line 28
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 35
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->dst:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/RectF;
    .param p2, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 42
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 43
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/ImageLayer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 45
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 45
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 51
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/ImageLayer;->boundsMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 54
    :cond_0
    return-void
.end method
