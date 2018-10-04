.class public Landroid/filterpacks/imageproc/ToPackedGrayFilter;
.super Landroid/filterfw/core/Filter;
.source "ToPackedGrayFilter.java"


# instance fields
.field private final mColorToPackedGrayShader:Ljava/lang/String;

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "owidth"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    const-string/jumbo v0, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mColorToPackedGrayShader:Ljava/lang/String;

    return-void
.end method

.method private checkOutputDimensions(II)V
    .locals 3

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 6

    iget v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOWidth:I

    if-nez v4, :cond_0

    move v0, v2

    :cond_0
    iget v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mOHeight:I

    if-nez v4, :cond_1

    move v1, v3

    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mKeepAspectRatio:Z

    if-eqz v4, :cond_3

    if-le v2, v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int v4, v0, v3

    div-int v1, v4, v2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v4, v1, v2

    div-int v0, v4, v3

    :cond_3
    :goto_0
    const/4 v4, 0x4

    if-lez v0, :cond_4

    if-ge v0, v4, :cond_4

    goto :goto_1

    :cond_4
    div-int/lit8 v5, v0, 0x4

    mul-int/2addr v4, v5

    :goto_1
    move v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1

    invoke-direct {p0, p2}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 2

    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nconst vec4 coeff_y = vec4(0.299, 0.587, 0.114, 0);\nuniform sampler2D tex_sampler_0;\nuniform float pix_stride;\nvarying vec2 v_texcoord;\nvoid main() {\n  for (int i = 0; i < 4; ++i) {\n    vec4 p = texture2D(tex_sampler_0,\n                       v_texcoord + vec2(pix_stride * float(i), 0.0));\n    gl_FragColor[i] = dot(p, coeff_y);\n  }\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->convertInputFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->checkOutputDimensions(II)V

    iget-object v5, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v6, "pix_stride"

    int-to-float v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    div-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v5

    div-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v6

    iget-object v7, p0, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v7, v0, v6}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v6}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const-string v8, "image"

    invoke-virtual {p0, v8, v7}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ToPackedGrayFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
