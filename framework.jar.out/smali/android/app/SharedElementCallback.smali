.class public abstract Landroid/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    }
.end annotation


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_GRAPHIC_BUFFER:Ljava/lang/String; = "sharedElement:snapshot:graphicBuffer"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field static final NULL_CALLBACK:Landroid/app/SharedElementCallback;


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/SharedElementCallback$1;

    invoke-direct {v0}, Landroid/app/SharedElementCallback$1;-><init>()V

    sput-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 8

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-static {v1, v0}, Landroid/transition/TransitionUtils;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "sharedElement:snapshot:bitmap"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    const-string/jumbo v6, "sharedElement:snapshot:graphicBuffer"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const-string/jumbo v5, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    const-string/jumbo v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :cond_2
    return-object v4

    :cond_3
    iget-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v1, p3, v0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "sharedElement:snapshot:graphicBuffer"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/GraphicBuffer;

    const-string/jumbo v3, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string/jumbo v5, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    goto :goto_0

    :cond_3
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    return-void
.end method
