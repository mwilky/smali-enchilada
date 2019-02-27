.class public Landroid/filterpacks/videosrc/CameraSource;
.super Landroid/filterfw/core/Filter;
.source "CameraSource.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraSource"

.field private static final mFrameShader:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

.field private static final mSourceCoords:[F


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraFrame:Landroid/filterfw/core/GLFrame;

.field private mCameraId:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "id"
    .end annotation
.end field

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraTransform:[F

.field private mFps:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "framerate"
    .end annotation
.end field

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private mHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "height"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mMappedCoords:[F

.field private mNewFrameAvailable:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "width"
    .end annotation
.end field

.field private onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    const/16 v0, 0x140

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    const/16 v0, 0x1e

    iput v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    new-instance v0, Landroid/filterpacks/videosrc/CameraSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/CameraSource$1;-><init>(Landroid/filterpacks/videosrc/CameraSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const-string v0, "CameraSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return-void
.end method

.method static synthetic access$000(Landroid/filterpacks/videosrc/CameraSource;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$102(Landroid/filterpacks/videosrc/CameraSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 3

    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method

.method private findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I
    .locals 10

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v6, v4, v1

    mul-int/lit16 v7, p1, 0x3e8

    if-ge v6, v7, :cond_0

    aget v6, v4, v5

    mul-int/lit16 v7, p1, 0x3e8

    if-le v6, v7, :cond_0

    aget v6, v4, v1

    aget v7, v2, v1

    if-le v6, v7, :cond_0

    aget v6, v4, v5

    aget v5, v2, v5

    if-ge v6, v5, :cond_0

    move-object v2, v4

    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v3, :cond_2

    const-string v3, "CameraSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested fps: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".Closest frame rate range: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v1

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v2, v5

    int-to-double v5, v1

    div-double/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method private findClosestSize(IILandroid/hardware/Camera$Parameters;)[I
    .locals 9

    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    iget v4, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, p1, :cond_0

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-gt v8, p2, :cond_0

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-lt v8, v1, :cond_0

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-lt v8, v2, :cond_0

    iget v1, v7, Landroid/hardware/Camera$Size;->width:I

    iget v2, v7, Landroid/hardware/Camera$Size;->height:I

    :cond_0
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    if-ge v8, v4, :cond_1

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    if-ge v8, v5, :cond_1

    iget v4, v7, Landroid/hardware/Camera$Size;->width:I

    iget v5, v7, Landroid/hardware/Camera$Size;->height:I

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    move v1, v4

    move v2, v5

    :cond_3
    iget-boolean v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v6, :cond_4

    const-string v6, "CameraSource"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested resolution: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "). Closest match: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v3

    const/4 v3, 0x1

    aput v2, v6, v3

    move-object v3, v6

    return-object v3
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Closing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 4

    const-string v0, "framerate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    :cond_1
    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    iget-object v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterpacks/videosrc/CameraSource;->findClosestSize(IILandroid/hardware/Camera$Parameters;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    const/4 v3, 0x1

    aget v4, v1, v3

    iput v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    iget-object v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v6, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v4, p0, Landroid/filterpacks/videosrc/CameraSource;->mFps:I

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v4, v5}, Landroid/filterpacks/videosrc/CameraSource;->findClosestFpsRange(ILandroid/hardware/Camera$Parameters;)[I

    move-result-object v4

    iget-object v5, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    aget v2, v4, v2

    aget v3, v4, v3

    invoke-virtual {v5, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget-object v2, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 5

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraId:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Landroid/filterpacks/videosrc/CameraSource;->createFormats()V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->onCameraFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind camera surface texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v1, "Preparing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 19

    move-object/from16 v1, p0

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraSource"

    const-string v2, "Processing new frame"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mWaitForNewFrame:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    move v3, v0

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    if-nez v0, :cond_3

    const/16 v0, 0xa

    if-eq v3, v0, :cond_2

    const-wide/16 v4, 0x64

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-boolean v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v4, :cond_1

    const-string v4, "CameraSource"

    const-string v5, "Interrupted while waiting for new frame"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Timeout waiting for new frame"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-boolean v2, v1, Landroid/filterpacks/videosrc/CameraSource;->mNewFrameAvailable:Z

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "CameraSource"

    const-string v4, "Got new frame"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-boolean v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v0, :cond_5

    const-string v0, "CameraSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using frame extractor in thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraTransform:[F

    const/4 v7, 0x0

    sget-object v8, Landroid/filterpacks/videosrc/CameraSource;->mSourceCoords:[F

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v10, v1, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    aget v11, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v2, 0x1

    aget v12, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v2, 0x4

    aget v13, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/4 v2, 0x5

    aget v14, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v2, 0x8

    aget v15, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v2, 0x9

    aget v16, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v2, 0xc

    aget v17, v0, v2

    iget-object v0, v1, Landroid/filterpacks/videosrc/CameraSource;->mMappedCoords:[F

    const/16 v2, 0xd

    aget v18, v0, v2

    invoke-virtual/range {v10 .. v18}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v2, v1, Landroid/filterpacks/videosrc/CameraSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iget-object v2, v1, Landroid/filterpacks/videosrc/CameraSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, v1, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v2, v3, v0}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    iget-object v2, v1, Landroid/filterpacks/videosrc/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    iget-boolean v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v4, :cond_6

    const-string v4, "CameraSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v6, v2

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v0, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    const-string/jumbo v4, "video"

    invoke-virtual {v1, v4, v0}, Landroid/filterpacks/videosrc/CameraSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    iget-boolean v4, v1, Landroid/filterpacks/videosrc/CameraSource;->mLogVerbose:Z

    if-eqz v4, :cond_7

    const-string v4, "CameraSource"

    const-string v5, "Done processing new frame"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public declared-synchronized setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mWidth:I

    iget v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iput-object p1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Landroid/filterpacks/videosrc/CameraSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setupPorts()V
    .locals 2

    const-string/jumbo v0, "video"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/CameraSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/videosrc/CameraSource;->mCameraFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    :cond_0
    return-void
.end method
