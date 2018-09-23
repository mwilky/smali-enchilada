.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "StrictModeFlash"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v0, v2

    const v2, 0xf6950

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v2, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    return-void
.end method

.method private drawIfNeeded()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0

    :goto_1
    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    new-instance v5, Landroid/graphics/Rect;

    const/16 v6, 0x14

    invoke-direct {v5, v0, v0, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v1, -0x14

    invoke-direct {v6, v7, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v2, -0x14

    invoke-direct {v6, v0, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :goto_0
    return-void
.end method
