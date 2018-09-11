.class public Lcom/airbnb/lottie/manager/ImageAssetManager;
.super Ljava/lang/Object;
.source "ImageAssetManager.java"


# instance fields
.field private final bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private delegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final imageAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private imagesFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V
    .locals 3
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "imagesFolder"    # Ljava/lang/String;
    .param p3, "delegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable$Callback;",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/ImageAssetDelegate;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;)V"
        }
    .end annotation

    .line 30
    .local p4, "imageAssets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/airbnb/lottie/LottieImageAsset;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    .line 31
    iput-object p2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    .line 37
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_1

    .line 38
    const-string v0, "LOTTIE"

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 41
    return-void

    .line 44
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 45
    iput-object p4, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    .line 46
    invoke-virtual {p0, p3}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 59
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 60
    iget-object v1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imageAssets:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieImageAsset;

    .line 61
    .local v1, "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 62
    return-object v2

    .line 64
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    if-eqz v3, :cond_2

    .line 65
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    invoke-interface {v2, v1}, Lcom/airbnb/lottie/ImageAssetDelegate;->fetchBitmap(Lcom/airbnb/lottie/LottieImageAsset;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    return-object v0

    .line 74
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->imagesFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieImageAsset;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v3, "is":Ljava/io/InputStream;
    nop

    .line 81
    nop

    .line 83
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 85
    const/16 v5, 0xa0

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 86
    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    goto :goto_0

    .line 75
    .restart local v1    # "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "LOTTIE"

    const-string v5, "Unable to open asset."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return-object v2

    .line 89
    .end local v1    # "imageAsset":Lcom/airbnb/lottie/LottieImageAsset;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public hasSameContext(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0
.end method

.method public recycleBitmaps()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 98
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    iput-object p1, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->delegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 51
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
