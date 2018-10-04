.class public Landroid/filterfw/core/SimpleFrameManager;
.super Landroid/filterfw/core/FrameManager;
.source "SimpleFrameManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/filterfw/core/FrameManager;-><init>()V

    return-void
.end method

.method private createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported frame target type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-static {v3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Landroid/filterfw/core/VertexFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/VertexFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/filterfw/core/GLFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/filterfw/core/NativeFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/NativeFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, p1, p0}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    move-object v0, v1

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/filterfw/core/GLFrame;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/filterfw/core/GLFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;IJ)V

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrameManager;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/GLFrame;->init(Landroid/filterfw/core/GLEnvironment;)V

    move-object v0, v1

    nop

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attached frames are not supported for target type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-static {v3}, Landroid/filterfw/core/FrameFormat;->targetToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrameManager;->createNewFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 3

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->decRefCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->hasNativeAllocation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->releaseNativeAllocation()V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    if-ltz v0, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Frame reference count dropped below 0!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public retainFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;
    .locals 0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->incRefCount()I

    return-object p1
.end method
