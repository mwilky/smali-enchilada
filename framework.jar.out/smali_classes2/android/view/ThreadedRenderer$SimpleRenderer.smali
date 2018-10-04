.class public Landroid/view/ThreadedRenderer$SimpleRenderer;
.super Ljava/lang/Object;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleRenderer"
.end annotation


# instance fields
.field private final mFrameInfo:Landroid/view/FrameInfo;

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private final mRootNode:Landroid/view/RenderNode;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/FrameInfo;

    invoke-direct {v0}, Landroid/view/FrameInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    sget-object v0, Lcom/android/internal/R$styleable;->Lighting:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v4, v4

    nop

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v5, v2

    add-float/2addr v5, v6

    float-to-int v2, v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v8

    iput-object v8, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-object v8, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v8, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    invoke-static {v7, v5, v6}, Landroid/view/ThreadedRenderer;->access$100(ZJ)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, p2}, Landroid/view/ThreadedRenderer;->access$200(JLjava/lang/String;)V

    sget-object v1, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v7, v8}, Landroid/view/ThreadedRenderer$ProcessInitializer;->init(Landroid/content/Context;J)V

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8}, Landroid/view/ThreadedRenderer;->access$300(J)Z

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, v3, v4, v2}, Landroid/view/ThreadedRenderer;->access$400(JFII)V

    iput-object p3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    iget-wide v7, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v7, v8, p3}, Landroid/view/ThreadedRenderer;->access$500(JLandroid/view/Surface;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mSurface:Landroid/view/Surface;

    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v2, v2, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->access$900(JJ)V

    return-void
.end method

.method public draw(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/FrameInfo;->setVsync(JJ)V

    iget-object v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/view/FrameInfo;->addFlags(J)V

    if-eqz p1, :cond_0

    iget-wide v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->access$700(JLandroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    :cond_0
    iget-wide v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget-object v4, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v4, v4, Landroid/view/FrameInfo;->mFrameInfo:[J

    iget-object v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mFrameInfo:Landroid/view/FrameInfo;

    iget-object v5, v5, Landroid/view/FrameInfo;->mFrameInfo:[J

    array-length v5, v5

    invoke-static {v2, v3, v4, v5}, Landroid/view/ThreadedRenderer;->access$800(J[JI)I

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
    iget-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->access$1000(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J
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

.method public getRootNode()Landroid/view/RenderNode;
    .locals 1

    iget-object v0, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mRootNode:Landroid/view/RenderNode;

    return-object v0
.end method

.method public setLightCenter(Landroid/view/Display;II)V
    .locals 6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, p2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightY:F

    int-to-float v3, p3

    sub-float/2addr v2, v3

    iget-wide v3, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mNativeProxy:J

    iget v5, p0, Landroid/view/ThreadedRenderer$SimpleRenderer;->mLightZ:F

    invoke-static {v3, v4, v1, v2, v5}, Landroid/view/ThreadedRenderer;->access$600(JFFF)V

    return-void
.end method
