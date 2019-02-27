.class public final Landroid/view/ThreadedRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$ProcessInitializer;,
        Landroid/view/ThreadedRenderer$FrameCompleteCallback;,
        Landroid/view/ThreadedRenderer$FrameDrawingCallback;,
        Landroid/view/ThreadedRenderer$SimpleRenderer;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$DumpFlags;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final CACHE_PATH_SKIASHADERS:Ljava/lang/String; = "com.android.skia.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field private static final FLAG_DUMP_ALL:I = 0x1

.field private static final FLAG_DUMP_FRAMESTATS:I = 0x1

.field private static final FLAG_DUMP_RESET:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ThreadedRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final SYNC_CONTEXT_IS_STOPPED:I = 0x4

.field private static final SYNC_FRAME_DROPPED:I = 0x8

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_LOST_SURFACE_REWARD_IF_FOUND:I = 0x2

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererDisabled:Z

.field private static sSupportsOpenGL:Ljava/lang/Boolean;

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mEnabled:Z

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private mIsOpaque:Z

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mRequested:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    nop

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v5, v1

    add-float/2addr v5, v6

    float-to-int v1, v5

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v0}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    invoke-static {p2, v3, v4}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p3}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    sget-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v5, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v0, p1, v5, v6}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getInstance()Lcom/oneplus/embryo/EmbryoApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/embryo/EmbryoApp;->checkHWUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(ZJ)J
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    return-void
.end method

.method static synthetic access$1200(J)I
    .locals 1

    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nGetRenderThreadTid(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()V
    .locals 0

    invoke-static {}, Landroid/view/ThreadedRenderer;->nRotateProcessStatsBuffer()V

    return-void
.end method

.method static synthetic access$1400(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetProcessStatsBuffer(I)V

    return-void
.end method

.method static synthetic access$200(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(J)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(JFII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ThreadedRenderer;->nSetup(JFII)V

    return-void
.end method

.method static synthetic access$500(JLandroid/view/Surface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$600(JFFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    return-void
.end method

.method static synthetic access$700(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    return-void
.end method

.method static synthetic access$800(J[JI)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    return-void
.end method

.method public static copySurfaceInto(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    move-result v0

    return v0

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/view/ThreadedRenderer;->nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ThreadedRenderer;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public static createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    return-void
.end method

.method public static disable(Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz p0, :cond_0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    :cond_0
    return-void
.end method

.method public static native disableVsync()V
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    return-void
.end method

.method public static isAvailable()Z
    .locals 4

    sget-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "ro.kernel.qemu"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    return v2

    :cond_1
    const-string/jumbo v0, "qemu.gles"

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    if-lez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    sget-object v1, Landroid/view/ThreadedRenderer;->sSupportsOpenGL:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static native nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J
.end method

.method private static native nAddRenderNode(JJZ)V
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z
.end method

.method private static native nCopySurfaceInto(Landroid/view/Surface;IIIILandroid/graphics/Bitmap;)I
.end method

.method private static native nCreateHardwareBitmap(JII)Landroid/graphics/Bitmap;
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(JJ)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDrawRenderNode(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;I)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nGetRenderThreadTid(J)I
.end method

.method private static native nHackySetRTAnimationsEnabled(Z)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)V
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)Z
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nRegisterVectorDrawableAnimator(JJ)V
.end method

.method private static native nRemoveFrameMetricsObserver(JJ)V
.end method

.method private static native nRemoveRenderNode(JJ)V
.end method

.method private static native nRotateProcessStatsBuffer()V
.end method

.method private static native nSerializeDisplayListTree(J)V
.end method

.method private static native nSetContentDrawBounds(JIIII)V
.end method

.method private static native nSetContextPriority(I)V
.end method

.method private static native nSetDebuggingEnabled(Z)V
.end method

.method private static native nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V
.end method

.method private static native nSetFrameCompleteCallback(JLandroid/view/ThreadedRenderer$FrameCompleteCallback;)V
.end method

.method private static native nSetHighContrastText(Z)V
.end method

.method private static native nSetIsolatedProcess(Z)V
.end method

.method private static native nSetLightCenter(JFFF)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProcessStatsBuffer(I)V
.end method

.method private static native nSetStopped(JZ)V
.end method

.method private static native nSetWideGamut(JZ)V
.end method

.method private static native nSetup(JFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(J[JI)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method public static overrideProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Landroid/view/ThreadedRenderer;->nOverrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name and value must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native prepareRenderThread()V
.end method

.method public static setContextPriority(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetContextPriority(I)V

    return-void
.end method

.method public static setDebuggingEnabled(Z)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetDebuggingEnabled(Z)V

    return-void
.end method

.method public static setFPSDivisor(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/view/ThreadedRenderer;->nHackySetRTAnimationsEnabled(Z)V

    return-void
.end method

.method public static setHighContrastText(Z)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetHighContrastText(Z)V

    return-void
.end method

.method public static setIsolatedProcess(Z)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nSetIsolatedProcess(Z)V

    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "com.android.skia.shaders_cache"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static trimMemory(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .locals 6

    const-string v0, "Record View#draw()"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->save()I

    move-result v3

    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/DisplayListCanvas;->translate(FF)V

    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    invoke-interface {p2, v0}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    invoke-virtual {v0, v3}, Landroid/view/DisplayListCanvas;->restoreToCount(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    nop

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    throw v1
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    return-void
.end method


# virtual methods
.method addFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 3

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nAddFrameMetricsObserver(JLandroid/view/FrameMetricsObserver;)J

    move-result-wide v0

    new-instance v2, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method

.method public addRenderNode(Landroid/view/RenderNode;Z)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nAddRenderNode(JJZ)V

    return-void
.end method

.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    return-void
.end method

.method copyLayerInto(Landroid/view/TextureLayer;Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJLandroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/TextureLayer;
    .locals 3

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/view/TextureLayer;->adoptTextureLayer(Landroid/view/ThreadedRenderer;J)Landroid/view/TextureLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDestroy(JJ)V

    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v1}, Landroid/view/FrameInfo;->markDrawStart()V

    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RenderNode;

    invoke-virtual {p0, v4}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    iput-object v3, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    :cond_1
    iget-object v2, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v2, v2, Landroid/view/FrameInfo;->mFrameInfo:[J

    if-eqz p4, :cond_2

    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v3, v4, p4}, Landroid/view/ThreadedRenderer;->nSetFrameCallback(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    :cond_2
    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    array-length v5, v2

    invoke-static {v3, v4, v2, v5}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(J[JI)I

    move-result v3

    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    :cond_3
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    :cond_4
    return-void
.end method

.method public drawRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nDrawRenderNode(JJ)V

    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    move v3, v2

    move v2, v0

    :goto_2
    array-length v4, p3

    if-ge v2, v4, :cond_6

    aget-object v4, p3, v2

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xf0608ae

    if-eq v6, v7, :cond_4

    const/16 v7, 0x5d4

    if-eq v6, v7, :cond_3

    const v7, 0x6761d4f

    if-eq v6, v7, :cond_2

    goto :goto_3

    :cond_2
    const-string/jumbo v6, "reset"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_3
    const-string v6, "-a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    goto :goto_4

    :cond_4
    const-string v6, "framestats"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v5

    :goto_4
    packed-switch v4, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_5

    :pswitch_1
    or-int/lit8 v3, v3, 0x2

    goto :goto_5

    :pswitch_2
    or-int/lit8 v3, v3, 0x1

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2, v3}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;I)V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method fence()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .locals 1

    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    iget-wide v1, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v1, v2, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)V

    return v0
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method invalidateRoot()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    return-void
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method loadSystemProperties()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    return-void
.end method

.method onLayerDestroyed(Landroid/view/TextureLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)Z

    move-result v0

    return v0
.end method

.method pushLayerUpdate(Landroid/view/TextureLayer;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/TextureLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    return-void
.end method

.method registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 4

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;->getAnimatorNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterVectorDrawableAnimator(JJ)V

    return-void
.end method

.method removeFrameMetricsObserver(Landroid/view/FrameMetricsObserver;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v2, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveFrameMetricsObserver(JJ)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/FrameMetricsObserver;->mNative:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method

.method public removeRenderNode(Landroid/view/RenderNode;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRemoveRenderNode(JJ)V

    return-void
.end method

.method public serializeDisplayListTree()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nSerializeDisplayListTree(J)V

    return-void
.end method

.method public setContentDrawBounds(IIII)V
    .locals 6

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nSetContentDrawBounds(JIIII)V

    return-void
.end method

.method setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return-void
.end method

.method setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetFrameCompleteCallback(JLandroid/view/ThreadedRenderer$FrameCompleteCallback;)V

    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .locals 6

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-wide v3, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    invoke-static {v3, v4, v1, v2, v5}, Landroid/view/ThreadedRenderer;->nSetLightCenter(JFFF)V

    return-void
.end method

.method setOpaque(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mIsOpaque:Z

    invoke-static {v0, v1, v2}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    return-void
.end method

.method setRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return-void
.end method

.method setStopped(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetStopped(JZ)V

    return-void
.end method

.method setWideGamut(Z)V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nSetWideGamut(JZ)V

    return-void
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .locals 5

    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v1, p1

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    iget v3, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->nSetup(JFII)V

    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    return-void
.end method

.method stopDrawing()V
    .locals 2

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    return-void
.end method
