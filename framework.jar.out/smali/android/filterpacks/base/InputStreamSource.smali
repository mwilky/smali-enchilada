.class public Landroid/filterpacks/base/InputStreamSource;
.super Landroid/filterfw/core/Filter;
.source "InputStreamSource.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "stream"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private mTarget:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-void
.end method


# virtual methods
.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    iget-object v4, p0, Landroid/filterpacks/base/InputStreamSource;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    nop

    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v2, v0}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    iget-object v3, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/filterfw/core/Frame;->setData(Ljava/nio/ByteBuffer;)V

    const-string v3, "data"

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/base/InputStreamSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const-string v3, "data"

    invoke-virtual {p0, v3}, Landroid/filterpacks/base/InputStreamSource;->closeOutputPort(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputStreamSource: Could not read stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setupPorts()V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/base/InputStreamSource;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/filterfw/format/PrimitiveFormat;->createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    :cond_0
    const-string v1, "data"

    iget-object v2, p0, Landroid/filterpacks/base/InputStreamSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/base/InputStreamSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
