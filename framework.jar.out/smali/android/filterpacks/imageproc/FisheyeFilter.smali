.class public Landroid/filterpacks/imageproc/FisheyeFilter;
.super Landroid/filterfw/core/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FisheyeFilter"

.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  const float min_dist = 0.01;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  dist = max(dist, min_dist);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private mHeight:I

.field private mProgram:Landroid/filterfw/core/Program;

.field private mScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "scale"
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
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    iput v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0

    iput p1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

    return-void
.end method

.method private updateProgramParams()V
    .locals 12

    const v0, 0x40490fdb    # (float)Math.PI

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v3, :cond_0

    aput v4, v1, v6

    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v6

    aput v4, v1, v5

    :goto_0
    iget v2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mScale:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    aget v4, v1, v6

    aget v6, v1, v6

    mul-float/2addr v4, v6

    aget v6, v1, v5

    aget v5, v1, v5

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3f933333    # 1.15f

    mul-float/2addr v5, v4

    mul-float v6, v5, v5

    const v7, 0x3fc90fdb

    div-float v8, v2, v4

    sub-float v9, v6, v3

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float/2addr v7, v8

    div-float v8, v4, v7

    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "scale"

    invoke-virtual {v9, v10, v1}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v10, "radius2"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "factor"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string v10, "alpha"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1

    iget-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateProgramParams()V

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

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  const float min_dist = 0.01;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  dist = max(dist, min_dist);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iget v1, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    nop

    iput p2, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter FisheyeFilter does not support frames of target "

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
    .locals 5

    const-string v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/FisheyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mTarget:I

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FisheyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mWidth:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mHeight:I

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/imageproc/FisheyeFilter;->updateFrameSize(II)V

    :cond_3
    iget-object v3, p0, Landroid/filterpacks/imageproc/FisheyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string v3, "image"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FisheyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    const-string v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string v0, "image"

    const-string v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FisheyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
