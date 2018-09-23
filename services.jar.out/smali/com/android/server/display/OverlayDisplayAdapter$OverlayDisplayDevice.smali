.class abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private mActiveMode:I

.field private final mDefaultMode:I

.field private final mDisplayPresentationDeadlineNanos:J

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mModes:[Landroid/view/Display$Mode;

.field private final mName:Ljava/lang/String;

.field private final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:F

.field private final mSecure:Z

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJZI",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p7

    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "overlay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p13

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p2

    invoke-direct {v0, v1, v6, v4}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    move-wide/from16 v7, p8

    iput-wide v7, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    move/from16 v4, p10

    iput-boolean v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    move/from16 v9, p11

    iput v9, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    move-object/from16 v10, p12

    iput-object v10, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/view/Display$Mode;

    iput-object v11, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    iget-object v13, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v14, v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v15, v12, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    invoke-static {v14, v15, v3}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v14

    aput-object v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move/from16 v11, p5

    iput v11, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    move/from16 v12, p6

    iput v12, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    const-wide/32 v7, 0x3b9aca00

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    float-to-int v3, v3

    int-to-long v9, v3

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-boolean v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v3

    iput v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public requestDisplayModesLocked(II)V
    .locals 4

    const/4 v0, -0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v1, "OverlayDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    :cond_3
    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    if-ne v1, v0, :cond_4

    return-void

    :cond_4
    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->onModeChangedLocked(I)V

    return-void
.end method

.method public setStateLocked(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method
