.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "ResizeFilter.java"


# instance fields
.field private mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private mInputChannels:I

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 2

    iget-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResizeFilter could not create suitable program!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    nop

    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native ResizeFilter not implemented yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ResizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iget-boolean v2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    iput v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    :cond_0
    iget v2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iget-boolean v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    check-cast v3, Landroid/filterfw/core/GLFrame;

    const/16 v4, 0x2801

    const/16 v5, 0x2701

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    invoke-virtual {v3, v0}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    iget-object v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v3, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v3}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    :goto_0
    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/ResizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
