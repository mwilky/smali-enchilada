.class public Landroid/filterpacks/imageproc/GrainFilter;
.super Landroid/filterfw/core/Filter;
.source "GrainFilter.java"


# static fields
.field private static final RAND_THRESHOLD:I = 0x80


# instance fields
.field private mGrainProgram:Landroid/filterfw/core/Program;

.field private final mGrainShader:Ljava/lang/String;

.field private mHeight:I

.field private mNoiseProgram:Landroid/filterfw/core/Program;

.field private final mNoiseShader:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "strength"
    .end annotation
.end field

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    iput v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    const-string/jumbo v0, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseShader:Ljava/lang/String;

    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainShader:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private updateFrameSize(II)V
    .locals 4

    iput p1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepX"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    div-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v1, "stepY"

    iget v2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method private updateParameters()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "seed"

    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/filterpacks/imageproc/GrainFilter;->mScale:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform vec2 seed;\nvarying vec2 v_texcoord;\nfloat rand(vec2 loc) {\n  float theta1 = dot(loc, vec2(0.9898, 0.233));\n  float theta2 = dot(loc, vec2(12.0, 78.0));\n  float value = cos(theta1) * sin(theta2) + sin(theta1) * cos(theta2);\n  float temp = mod(197.0 * value, 1.0) + value;\n  float part1 = mod(220.0 * temp, 1.0) + temp;\n  float part2 = value * 0.5453;\n  float part3 = cos(theta1 + theta2) * 0.43758;\n  return fract(part1 + part2 + part3);\n}\nvoid main() {\n  gl_FragColor = vec4(rand(v_texcoord + seed), 0.0, 0.0, 1.0);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    new-instance v1, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float scale;\nuniform float stepX;\nuniform float stepY;\nvarying vec2 v_texcoord;\nvoid main() {\n  float noise = texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(-stepX, stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, -stepY)).r * 0.224;\n  noise += texture2D(tex_sampler_1, v_texcoord + vec2(stepX, stepY)).r * 0.224;\n  noise += 0.4448;\n  noise *= scale;\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float energy = 0.33333 * color.r + 0.33333 * color.g + 0.33333 * color.b;\n  float mask = (1.0 - sqrt(energy));\n  float weight = 1.0 - 1.333 * mask * noise;\n  gl_FragColor = vec4(color.rgb * weight, color.a);\n}\n"

    invoke-direct {v1, p1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    move-object v0, v1

    iget v1, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    nop

    iput p2, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 9

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/GrainFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    const/4 v5, 0x3

    invoke-static {v2, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    iget-object v6, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v6

    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mTarget:I

    if-eq v6, v7, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/filterpacks/imageproc/GrainFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    invoke-direct {p0}, Landroid/filterpacks/imageproc/GrainFilter;->updateParameters()V

    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mWidth:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/filterpacks/imageproc/GrainFilter;->mHeight:I

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/filterpacks/imageproc/GrainFilter;->updateFrameSize(II)V

    :cond_3
    const/4 v6, 0x0

    new-array v7, v6, [Landroid/filterfw/core/Frame;

    iget-object v8, p0, Landroid/filterpacks/imageproc/GrainFilter;->mNoiseProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v8, v7, v4}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    new-array v3, v3, [Landroid/filterfw/core/Frame;

    aput-object v0, v3, v6

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v6, p0, Landroid/filterpacks/imageproc/GrainFilter;->mGrainProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v6, v3, v5}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v6, "image"

    invoke-virtual {p0, v6, v5}, Landroid/filterpacks/imageproc/GrainFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/GrainFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
