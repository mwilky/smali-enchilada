.class public Landroid/filterpacks/imageproc/FixedRotationFilter;
.super Landroid/filterfw/core/Filter;
.source "FixedRotationFilter.java"


# instance fields
.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRotation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "rotation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iget v1, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    if-nez v1, :cond_0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v2

    iput-object v2, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    new-instance v5, Landroid/filterfw/geometry/Point;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v7, Landroid/filterfw/geometry/Point;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v6}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v6, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v6, v9

    new-instance v9, Landroid/filterfw/geometry/Point;

    invoke-direct {v9, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    move-object v8, v9

    iget v9, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mRotation:I

    int-to-float v9, v9

    const/high16 v10, 0x42b40000    # 90.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    rem-int/lit8 v9, v9, 0x4

    packed-switch v9, :pswitch_data_0

    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_0

    :pswitch_0
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v7, v8, v5, v6}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    invoke-virtual {v2, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_0

    :pswitch_1
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v8, v6, v7, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    goto :goto_0

    :pswitch_2
    new-instance v9, Landroid/filterfw/geometry/Quad;

    invoke-direct {v9, v6, v5, v8, v7}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    invoke-virtual {v2, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    nop

    :goto_0
    nop

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v10

    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    iget-object v11, p0, Landroid/filterpacks/imageproc/FixedRotationFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v11, v0, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v11, "image"

    invoke-virtual {p0, v11, v10}, Landroid/filterpacks/imageproc/FixedRotationFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v10}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FixedRotationFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
