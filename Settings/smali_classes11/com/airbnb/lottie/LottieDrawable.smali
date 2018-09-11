.class public Lcom/airbnb/lottie/LottieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;,
        Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field private speed:F

.field private systemAnimationsAreDisabled:Z

.field textDelegate:Lcom/airbnb/lottie/TextDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 54
    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 66
    const/16 v0, 0xff

    iput v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 71
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$1;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/LottieDrawable$1;-><init>(Lcom/airbnb/lottie/LottieDrawable;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/model/layer/CompositionLayer;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieDrawable;)Lcom/airbnb/lottie/utils/LottieValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p1, "x1"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/airbnb/lottie/LottieDrawable;
    .param p1, "x1"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    return-void
.end method

.method private addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 3
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

    .line 287
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 288
    .local v0, "data":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    new-instance v2, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    invoke-direct {v2, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v1, :cond_1

    .line 295
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 299
    return-void
.end method

.method private applyColorFilters()V
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;

    .line 210
    .local v1, "data":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v3, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    iget-object v4, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    iget-object v5, v1, Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 211
    .end local v1    # "data":Lcom/airbnb/lottie/LottieDrawable$ColorFilterData;
    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 200
    new-instance v0, Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 201
    invoke-static {v1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/CompositionLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 202
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->recycleBitmaps()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 217
    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 218
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 219
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 673
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 674
    return-object v1

    .line 677
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 678
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    return-object v1

    .line 680
    :cond_1
    return-object v1
.end method

.method private getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;
    .locals 3

    .line 659
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 661
    const/4 v0, 0x0

    return-object v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-nez v0, :cond_1

    .line 665
    new-instance v0, Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    return-object v0
.end method

.method private getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;
    .locals 5

    .line 632
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 634
    return-object v1

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->recycleBitmaps()V

    .line 639
    iput-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-nez v0, :cond_2

    .line 643
    new-instance v0, Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 644
    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    return-object v0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 717
    .local v0, "maxScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 718
    .local v1, "maxScaleY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private playAnimation(Z)V
    .locals 2
    .param p1, "resetProgress"    # Z

    .line 383
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$2;-><init>(Lcom/airbnb/lottie/LottieDrawable;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    return-void

    .line 391
    :cond_0
    if-eqz p1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->start()V

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->resumeAnimation()V

    .line 396
    :goto_0
    return-void
.end method

.method private reverseAnimation(Z)V
    .locals 3
    .param p1, "resetProgress"    # Z

    .line 429
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$4;-><init>(Lcom/airbnb/lottie/LottieDrawable;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v0

    .line 438
    .local v0, "progress":F
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->reverse()V

    .line 439
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    goto :goto_1

    .line 440
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMinProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    .line 444
    :goto_1
    return-void
.end method

.method private updateBounds()V
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 568
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v0

    .line 571
    .local v0, "scale":F
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 572
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 571
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/airbnb/lottie/LottieDrawable;->setBounds(IIII)V

    .line 573
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 589
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 581
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 582
    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 266
    return-void
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "contentName"    # Ljava/lang/String;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 249
    return-void
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 258
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 577
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->cancel()V

    .line 578
    return-void
.end method

.method public clearColorFilters()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->colorFilterData:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/airbnb/lottie/LottieDrawable;->addColorFilterInternal(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 274
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 306
    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 312
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 313
    .local v1, "extraScale":F
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v2

    .line 314
    .local v2, "maxScale":F
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    .line 315
    move v0, v2

    .line 316
    iget v3, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    div-float v1, v3, v0

    .line 319
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 330
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 331
    .local v4, "halfWidth":F
    iget-object v6, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 332
    .local v6, "halfHeight":F
    mul-float v5, v4, v0

    .line 333
    .local v5, "scaledHalfWidth":F
    mul-float v7, v6, v0

    .line 335
    .local v7, "scaledHalfHeight":F
    nop

    .line 336
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v8

    mul-float/2addr v8, v4

    sub-float/2addr v8, v5

    .line 337
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v9

    mul-float/2addr v9, v6

    sub-float/2addr v9, v7

    .line 335
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 341
    .end local v4    # "halfWidth":F
    .end local v5    # "scaledHalfWidth":F
    .end local v6    # "halfHeight":F
    .end local v7    # "scaledHalfHeight":F
    :cond_2
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 342
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 343
    iget-object v4, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    iget-object v5, p0, Lcom/airbnb/lottie/LottieDrawable;->matrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 344
    const-string v4, "Drawable#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    .line 346
    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 349
    :cond_3
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 108
    sget-object v0, Lcom/airbnb/lottie/LottieDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    .line 112
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 115
    :cond_1
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->enableMergePaths:Z

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 624
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v0

    .line 625
    .local v0, "bm":Lcom/airbnb/lottie/manager/ImageAssetManager;
    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 628
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 302
    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getProgress()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 559
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    return v0
.end method

.method public getTextDelegate()Lcom/airbnb/lottie/TextDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 651
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFontAssetManager()Lcom/airbnb/lottie/manager/FontAssetManager;

    move-result-object v0

    .line 652
    .local v0, "assetManager":Lcom/airbnb/lottie/manager/FontAssetManager;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 655
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasMasks()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 688
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 689
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 223
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z

    .line 357
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setRepeatCount(I)V

    .line 358
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .line 369
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 370
    return-void
.end method

.method public playAnimation(FF)V
    .locals 3
    .param p1, "startProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "endProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 413
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->updateValues(FF)V

    .line 414
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setCurrentPlayTime(J)V

    .line 415
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 417
    return-void
.end method

.method public playAnimation(II)V
    .locals 3
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I

    .line 399
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable$3;-><init>(Lcom/airbnb/lottie/LottieDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    return-void

    .line 407
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 408
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v2

    div-float/2addr v1, v2

    .line 407
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(FF)V

    .line 409
    return-void
.end method

.method public recycleBitmaps()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {v0}, Lcom/airbnb/lottie/manager/ImageAssetManager;->recycleBitmaps()V

    .line 149
    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 593
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 585
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 586
    return-void
.end method

.method public resumeAnimation()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 378
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->getMaxProgress()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 377
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation(Z)V

    .line 380
    return-void
.end method

.method public resumeReverseAnimation()V
    .locals 1

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 421
    return-void
.end method

.method public reverseAnimation()V
    .locals 2

    .line 424
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v0

    .line 425
    .local v0, "progress":F
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimation(Z)V

    .line 426
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .line 696
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 697
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 698
    return-void

    .line 700
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 701
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 229
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->alpha:I

    .line 230
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use addColorFilter instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)Z
    .locals 2
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 155
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-ne v0, p1, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    .line 160
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 161
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    .line 162
    iget v0, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setScale(F)V

    .line 163
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 164
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->buildCompositionLayer()V

    .line 165
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->applyColorFilters()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;

    .line 172
    .local v1, "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;->run(Lcom/airbnb/lottie/LottieComposition;)V

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 174
    .end local v1    # "t":Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;
    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 179
    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->forceUpdate()V

    .line 181
    const/4 v1, 0x1

    return v1
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/FontAssetDelegate;

    .line 540
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetDelegate:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 541
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->fontAssetManager:Lcom/airbnb/lottie/manager/FontAssetManager;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/FontAssetManager;->setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    .line 544
    :cond_0
    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 529
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetDelegate:Lcom/airbnb/lottie/ImageAssetDelegate;

    .line 530
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetManager:Lcom/airbnb/lottie/manager/ImageAssetManager;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/ImageAssetManager;->setDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    .line 533
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 2
    .param p1, "maxFrame"    # I

    .line 463
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$6;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    return-void

    .line 471
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 472
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "maxProgress"    # F

    .line 475
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMaxProgress(F)V

    .line 476
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 479
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    .line 480
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    .line 481
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0
    .param p1, "minProgress"    # F
    .param p2, "maxProgress"    # F

    .line 484
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 485
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    .line 486
    return-void
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "minFrame"    # I

    .line 447
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/LottieDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable$5;-><init>(Lcom/airbnb/lottie/LottieDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    return-void

    .line 455
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    .line 456
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "minProgress"    # F

    .line 459
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setMinProgress(F)V

    .line 460
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieDrawable;->performanceTrackingEnabled:Z

    .line 186
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieComposition;->setPerformanceTrackingEnabled(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 498
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setProgress(F)V

    .line 499
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    .line 502
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 518
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->scale:F

    .line 519
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->updateBounds()V

    .line 520
    return-void
.end method

.method public setSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .line 489
    iput p1, p0, Lcom/airbnb/lottie/LottieDrawable;->speed:F

    .line 490
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setIsReversed(Z)V

    .line 492
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 495
    :cond_1
    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 0
    .param p1, "textDelegate"    # Lcom/airbnb/lottie/TextDelegate;

    .line 547
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    .line 548
    return-void
.end method

.method systemAnimationsAreDisabled()V
    .locals 1

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieDrawable;->systemAnimationsAreDisabled:Z

    .line 353
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->systemAnimationsAreDisabled()V

    .line 354
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 704
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 705
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 706
    return-void

    .line 708
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 709
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 612
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetManager()Lcom/airbnb/lottie/manager/ImageAssetManager;

    move-result-object v0

    .line 613
    .local v0, "bm":Lcom/airbnb/lottie/manager/ImageAssetManager;
    if-nez v0, :cond_0

    .line 614
    const-string v1, "LOTTIE"

    const-string v2, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x0

    return-object v1

    .line 618
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 619
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    .line 620
    return-object v1
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->textDelegate:Lcom/airbnb/lottie/TextDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
