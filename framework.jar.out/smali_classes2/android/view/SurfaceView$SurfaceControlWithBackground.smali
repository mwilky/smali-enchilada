.class Landroid/view/SurfaceView$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field mBackgroundControl:Landroid/view/SurfaceControl;

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Ljava/lang/String;ZLandroid/view/SurfaceControl$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background for -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    iput-boolean p3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView$SurfaceControlWithBackground;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->setBackgroundColor(I)V

    return-void
.end method

.method private setBackgroundColor(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setColor([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayer(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method public setLayerStack(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method updateBackgroundVisibility()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    :goto_0
    return-void
.end method
