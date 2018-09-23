.class Lcom/android/server/wm/CircularDisplayMask;
.super Ljava/lang/Object;
.source "CircularDisplayMask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDimensionsUnequal:Z

.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mMaskThickness:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRotation:I

.field private mScreenOffset:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;III)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen dimensions of displayId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "are not equal, circularMask will not be drawn."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v4, "CircularDisplayMask"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v4, -0x3

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-boolean v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    iput p4, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    return-void
.end method

.method private drawIfNeeded()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDimensionsUnequal:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    nop

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/CircularDisplayMask;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v3, v2

    int-to-float v4, v2

    iget v5, p0, Lcom/android/server/wm/CircularDisplayMask;->mMaskThickness:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/CircularDisplayMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :cond_2
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method positionSurface(III)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/CircularDisplayMask;->mLastDH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mDrawNeeded:Z

    iput p3, p0, Lcom/android/server/wm/CircularDisplayMask;->mRotation:I

    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/CircularDisplayMask;->mVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/CircularDisplayMask;->drawIfNeeded()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/CircularDisplayMask;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :goto_0
    return-void
.end method
