.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    return-void
.end method

.method static synthetic access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private arg(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .locals 2

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pointer"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    return-void
.end method

.method private bindArrays()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_3
    return-void
.end method

.method private checkError()V
    .locals 3

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    move v1, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_7

    iget-object v0, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v0, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-gez v0, :cond_2

    const-string v0, "invalid stride"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-virtual {p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    move-result v0

    iget-object v1, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    iget v3, p4, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p4, v3}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v4

    mul-int v5, v0, p5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_6

    if-lez v6, :cond_3

    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v7, 0x1406

    if-eq v3, v7, :cond_5

    const/16 v7, 0x140c

    if-eq v3, v7, :cond_4

    packed-switch v3, :pswitch_data_0

    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    div-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v8}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    const/16 v8, 0xff

    and-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    div-int/lit8 v8, v5, 0x4

    invoke-virtual {v7, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    div-int/lit8 v8, v5, 0x4

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    add-int/2addr v5, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "}"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_7
    :goto_2
    const-string/jumbo v0, "undefined }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x1400
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string/jumbo v4, "v"

    iget-object v5, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v8, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string/jumbo v9, "n"

    iget-object v10, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v6, p0

    move-object v7, p1

    move v11, p3

    invoke-direct/range {v6 .. v11}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    const-string v3, "c"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v7, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string/jumbo v8, "t"

    iget-object v9, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v5, p0

    move-object v6, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private end()V
    .locals 1

    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private endLogIndices()V
    .locals 1

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    return-void
.end method

.method private flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    :goto_0
    return-void
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .locals 2

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v0, p2

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_TRIANGLE_FAN"

    return-object v0

    :pswitch_1
    const-string v0, "GL_TRIANGLE_STRIP"

    return-object v0

    :pswitch_2
    const-string v0, "GL_TRIANGLES"

    return-object v0

    :pswitch_3
    const-string v0, "GL_LINE_STRIP"

    return-object v0

    :pswitch_4
    const-string v0, "GL_LINE_LOOP"

    return-object v0

    :pswitch_5
    const-string v0, "GL_LINES"

    return-object v0

    :pswitch_6
    const-string v0, "GL_POINTS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    return-object v0

    :sswitch_1
    const-string v0, "GL_RESCALE_NORMAL"

    return-object v0

    :sswitch_2
    const-string v0, "GL_TEXTURE_2D"

    return-object v0

    :sswitch_3
    const-string v0, "GL_SCISSOR_TEST"

    return-object v0

    :sswitch_4
    const-string v0, "GL_COLOR_LOGIC_OP"

    return-object v0

    :sswitch_5
    const-string v0, "GL_BLEND"

    return-object v0

    :sswitch_6
    const-string v0, "GL_DITHER"

    return-object v0

    :sswitch_7
    const-string v0, "GL_ALPHA_TEST"

    return-object v0

    :sswitch_8
    const-string v0, "GL_NORMALIZE"

    return-object v0

    :sswitch_9
    const-string v0, "GL_STENCIL_TEST"

    return-object v0

    :sswitch_a
    const-string v0, "GL_DEPTH_TEST"

    return-object v0

    :sswitch_b
    const-string v0, "GL_FOG"

    return-object v0

    :sswitch_c
    const-string v0, "GL_COLOR_MATERIAL"

    return-object v0

    :sswitch_d
    const-string v0, "GL_LIGHTING"

    return-object v0

    :sswitch_e
    const-string v0, "GL_CULL_FACE"

    return-object v0

    :sswitch_f
    const-string v0, "GL_LINE_SMOOTH"

    return-object v0

    :sswitch_10
    const-string v0, "GL_POINT_SMOOTH"

    return-object v0

    :pswitch_0
    const-string v0, "GL_SAMPLE_COVERAGE"

    return-object v0

    :pswitch_1
    const-string v0, "GL_SAMPLE_ALPHA_TO_ONE"

    return-object v0

    :pswitch_2
    const-string v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    return-object v0

    :pswitch_3
    const-string v0, "GL_MULTISAMPLE"

    return-object v0

    :pswitch_4
    const-string v0, "GL_COLOR_ARRAY"

    return-object v0

    :pswitch_5
    const-string v0, "GL_NORMAL_ARRAY"

    return-object v0

    :pswitch_6
    const-string v0, "GL_VERTEX_ARRAY"

    return-object v0

    :pswitch_7
    const-string v0, "GL_LIGHT7"

    return-object v0

    :pswitch_8
    const-string v0, "GL_LIGHT6"

    return-object v0

    :pswitch_9
    const-string v0, "GL_LIGHT5"

    return-object v0

    :pswitch_a
    const-string v0, "GL_LIGHT4"

    return-object v0

    :pswitch_b
    const-string v0, "GL_LIGHT3"

    return-object v0

    :pswitch_c
    const-string v0, "GL_LIGHT2"

    return-object v0

    :pswitch_d
    const-string v0, "GL_LIGHT1"

    return-object v0

    :pswitch_e
    const-string v0, "GL_LIGHT0"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8074
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x809d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb10 -> :sswitch_10
        0xb20 -> :sswitch_f
        0xb44 -> :sswitch_e
        0xb50 -> :sswitch_d
        0xb57 -> :sswitch_c
        0xb60 -> :sswitch_b
        0xb71 -> :sswitch_a
        0xb90 -> :sswitch_9
        0xba1 -> :sswitch_8
        0xbc0 -> :sswitch_7
        0xbd0 -> :sswitch_6
        0xbe2 -> :sswitch_5
        0xbf2 -> :sswitch_4
        0xc11 -> :sswitch_3
        0xde1 -> :sswitch_2
        0x803a -> :sswitch_1
        0x8078 -> :sswitch_0
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_0

    const-string v1, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x101

    :cond_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x401

    :cond_2
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x4001

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientState(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "GL_TEXTURE_COORD_ARRAY"

    return-object v0

    :pswitch_2
    const-string v0, "GL_COLOR_ARRAY"

    return-object v0

    :pswitch_3
    const-string v0, "GL_NORMAL_ARRAY"

    return-object v0

    :pswitch_4
    const-string v0, "GL_VERTEX_ARRAY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_OUT_OF_MEMORY"

    return-object v0

    :pswitch_1
    const-string v0, "GL_STACK_UNDERFLOW"

    return-object v0

    :pswitch_2
    const-string v0, "GL_STACK_OVERFLOW"

    return-object v0

    :pswitch_3
    const-string v0, "GL_INVALID_OPERATION"

    return-object v0

    :pswitch_4
    const-string v0, "GL_INVALID_VALUE"

    return-object v0

    :pswitch_5
    const-string v0, "GL_INVALID_ENUM"

    return-object v0

    :cond_0
    const-string v0, "GL_NO_ERROR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x408

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "GL_FRONT_AND_BACK"

    return-object v0
.end method

.method private getFactor(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_SRC_ALPHA_SATURATE"

    return-object v0

    :pswitch_1
    const-string v0, "GL_ONE_MINUS_DST_COLOR"

    return-object v0

    :pswitch_2
    const-string v0, "GL_DST_COLOR"

    return-object v0

    :pswitch_3
    const-string v0, "GL_ONE_MINUS_DST_ALPHA"

    return-object v0

    :pswitch_4
    const-string v0, "GL_DST_ALPHA"

    return-object v0

    :pswitch_5
    const-string v0, "GL_ONE_MINUS_SRC_ALPHA"

    return-object v0

    :pswitch_6
    const-string v0, "GL_SRC_ALPHA"

    return-object v0

    :pswitch_7
    const-string v0, "GL_ONE_MINUS_SRC_COLOR"

    return-object v0

    :pswitch_8
    const-string v0, "GL_SRC_COLOR"

    return-object v0

    :pswitch_9
    const-string v0, "GL_ONE"

    return-object v0

    :pswitch_a
    const-string v0, "GL_ZERO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x300
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_FOG_COLOR"

    return-object v0

    :pswitch_1
    const-string v0, "GL_FOG_MODE"

    return-object v0

    :pswitch_2
    const-string v0, "GL_FOG_END"

    return-object v0

    :pswitch_3
    const-string v0, "GL_FOG_START"

    return-object v0

    :pswitch_4
    const-string v0, "GL_FOG_DENSITY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0xb62
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_NICEST"

    return-object v0

    :pswitch_1
    const-string v0, "GL_FASTEST"

    return-object v0

    :pswitch_2
    const-string v0, "GL_DONT_CARE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .locals 1

    const v0, 0x8192

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_FOG_HINT"

    return-object v0

    :pswitch_1
    const-string v0, "GL_POLYGON_SMOOTH_HINT"

    return-object v0

    :pswitch_2
    const-string v0, "GL_LINE_SMOOTH_HINT"

    return-object v0

    :pswitch_3
    const-string v0, "GL_POINT_SMOOTH_HINT"

    return-object v0

    :pswitch_4
    const-string v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    return-object v0

    :cond_0
    const-string v0, "GL_GENERATE_MIPMAP_HINT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xc50
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1401

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1403

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "GL_UNSIGNED_SHORT"

    return-object v0

    :cond_1
    const-string v0, "GL_UNSIGNED_BYTE"

    return-object v0
.end method

.method private getIntegerStateFormat(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x898d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_1
    const-string v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_2
    const-string v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_3
    const-string v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    return-object v0

    :sswitch_4
    const-string v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    return-object v0

    :sswitch_5
    const-string v0, "GL_MAX_TEXTURE_UNITS"

    return-object v0

    :sswitch_6
    const-string v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    return-object v0

    :sswitch_7
    const-string v0, "GL_ALIASED_POINT_SIZE_RANGE"

    return-object v0

    :sswitch_8
    const-string v0, "GL_MAX_ELEMENTS_INDICES"

    return-object v0

    :sswitch_9
    const-string v0, "GL_MAX_ELEMENTS_VERTICES"

    return-object v0

    :sswitch_a
    const-string v0, "GL_STENCIL_BITS"

    return-object v0

    :sswitch_b
    const-string v0, "GL_DEPTH_BITS"

    return-object v0

    :sswitch_c
    const-string v0, "GL_ALPHA_BITS"

    return-object v0

    :sswitch_d
    const-string v0, "GL_BLUE_BITS"

    return-object v0

    :sswitch_e
    const-string v0, "GL_GREEN_BITS"

    return-object v0

    :sswitch_f
    const-string v0, "GL_RED_BITS"

    return-object v0

    :sswitch_10
    const-string v0, "GL_SUBPIXEL_BITS"

    return-object v0

    :sswitch_11
    const-string v0, "GL_MAX_VIEWPORT_DIMS"

    return-object v0

    :sswitch_12
    const-string v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    return-object v0

    :sswitch_13
    const-string v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    return-object v0

    :sswitch_14
    const-string v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    return-object v0

    :sswitch_15
    const-string v0, "GL_MAX_TEXTURE_SIZE"

    return-object v0

    :sswitch_16
    const-string v0, "GL_MAX_LIGHTS"

    return-object v0

    :sswitch_17
    const-string v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    return-object v0

    :sswitch_18
    const-string v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_18
        0xb22 -> :sswitch_17
        0xd31 -> :sswitch_16
        0xd33 -> :sswitch_15
        0xd36 -> :sswitch_14
        0xd38 -> :sswitch_13
        0xd39 -> :sswitch_12
        0xd3a -> :sswitch_11
        0xd50 -> :sswitch_10
        0xd52 -> :sswitch_f
        0xd53 -> :sswitch_e
        0xd54 -> :sswitch_d
        0xd55 -> :sswitch_c
        0xd56 -> :sswitch_b
        0xd57 -> :sswitch_a
        0x80e8 -> :sswitch_9
        0x80e9 -> :sswitch_8
        0x846d -> :sswitch_7
        0x846e -> :sswitch_6
        0x84e2 -> :sswitch_5
        0x86a2 -> :sswitch_4
        0x86a3 -> :sswitch_3
        0x898d -> :sswitch_2
        0x898e -> :sswitch_1
        0x898f -> :sswitch_0
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    :sswitch_0
    const/16 v0, 0x10

    return v0

    :sswitch_1
    new-array v1, v2, [I

    iget-object v2, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x86a2

    invoke-interface {v2, v3, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v0, v1, v0

    return v0

    :sswitch_2
    return v2

    :sswitch_3
    return v2

    :sswitch_4
    return v1

    :sswitch_5
    return v1

    :sswitch_6
    return v2

    :sswitch_7
    return v2

    :sswitch_8
    return v2

    :sswitch_9
    return v2

    :sswitch_a
    return v2

    :sswitch_b
    return v2

    :sswitch_c
    return v2

    :sswitch_d
    return v2

    :sswitch_e
    return v2

    :sswitch_f
    return v1

    :sswitch_10
    return v2

    :sswitch_11
    return v2

    :sswitch_12
    return v2

    :sswitch_13
    return v2

    :sswitch_14
    return v2

    :sswitch_15
    return v1

    :sswitch_16
    return v1

    :sswitch_data_0
    .sparse-switch
        0xb12 -> :sswitch_16
        0xb22 -> :sswitch_15
        0xd31 -> :sswitch_14
        0xd33 -> :sswitch_13
        0xd36 -> :sswitch_12
        0xd38 -> :sswitch_11
        0xd39 -> :sswitch_10
        0xd3a -> :sswitch_f
        0xd50 -> :sswitch_e
        0xd52 -> :sswitch_d
        0xd53 -> :sswitch_c
        0xd54 -> :sswitch_b
        0xd55 -> :sswitch_a
        0xd56 -> :sswitch_9
        0xd57 -> :sswitch_8
        0x80e8 -> :sswitch_7
        0x80e9 -> :sswitch_6
        0x846d -> :sswitch_5
        0x846e -> :sswitch_4
        0x84e2 -> :sswitch_3
        0x86a2 -> :sswitch_2
        0x86a3 -> :sswitch_1
        0x898d -> :sswitch_0
        0x898e -> :sswitch_0
        0x898f -> :sswitch_0
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_LIGHT_MODEL_AMBIENT"

    return-object v0

    :pswitch_1
    const-string v0, "GL_LIGHT_MODEL_TWO_SIDE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb52
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_QUADRATIC_ATTENUATION"

    return-object v0

    :pswitch_1
    const-string v0, "GL_LINEAR_ATTENUATION"

    return-object v0

    :pswitch_2
    const-string v0, "GL_CONSTANT_ATTENUATION"

    return-object v0

    :pswitch_3
    const-string v0, "GL_SPOT_CUTOFF"

    return-object v0

    :pswitch_4
    const-string v0, "GL_SPOT_EXPONENT"

    return-object v0

    :pswitch_5
    const-string v0, "GL_SPOT_DIRECTION"

    return-object v0

    :pswitch_6
    const-string v0, "GL_POSITION"

    return-object v0

    :pswitch_7
    const-string v0, "GL_SPECULAR"

    return-object v0

    :pswitch_8
    const-string v0, "GL_DIFFUSE"

    return-object v0

    :pswitch_9
    const-string v0, "GL_AMBIENT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :pswitch_4
    return v1

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    return v0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    :pswitch_9
    return v0

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_AMBIENT_AND_DIFFUSE"

    return-object v0

    :pswitch_1
    const-string v0, "GL_SHININESS"

    return-object v0

    :pswitch_2
    const-string v0, "GL_EMISSION"

    return-object v0

    :pswitch_3
    const-string v0, "GL_SPECULAR"

    return-object v0

    :pswitch_4
    const-string v0, "GL_DIFFUSE"

    return-object v0

    :pswitch_5
    const-string v0, "GL_AMBIENT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1600
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaterialParamCount(I)I
    .locals 1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1200
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1600
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE"

    return-object v0

    :pswitch_1
    const-string v0, "GL_PROJECTION"

    return-object v0

    :pswitch_2
    const-string v0, "GL_MODELVIEW"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1406

    if-eq p1, v0, :cond_1

    const/16 v0, 0x140c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_SHORT"

    return-object v0

    :pswitch_1
    const-string v0, "GL_UNSIGNED_BYTE"

    return-object v0

    :pswitch_2
    const-string v0, "GL_BYTE"

    return-object v0

    :cond_0
    const-string v0, "GL_FIXED"

    return-object v0

    :cond_1
    const-string v0, "GL_FLOAT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1400
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_SMOOTH"

    return-object v0

    :pswitch_1
    const-string v0, "GL_FLAT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1d00
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE_ENV_COLOR"

    return-object v0

    :pswitch_1
    const-string v0, "GL_TEXTURE_ENV_MODE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2200
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_4

    const/16 v1, 0x104

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbe2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e01

    if-eq v0, v1, :cond_1

    const v1, 0x8570

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "GL_DECAL"

    return-object v1

    :pswitch_1
    const-string v1, "GL_MODULATE"

    return-object v1

    :cond_0
    const-string v1, "GL_COMBINE"

    return-object v1

    :cond_1
    const-string v1, "GL_REPLACE"

    return-object v1

    :cond_2
    const-string v1, "GL_BLEND"

    return-object v1

    :cond_3
    const-string v1, "GL_ADD"

    return-object v1

    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2100
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2300

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "GL_TEXTURE_ENV"

    return-object v0
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .locals 1

    const v0, 0x8191

    if-eq p1, v0, :cond_1

    const v0, 0x8b9d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "GL_TEXTURE_WRAP_T"

    return-object v0

    :pswitch_1
    const-string v0, "GL_TEXTURE_WRAP_S"

    return-object v0

    :pswitch_2
    const-string v0, "GL_TEXTURE_MIN_FILTER"

    return-object v0

    :pswitch_3
    const-string v0, "GL_TEXTURE_MAG_FILTER"

    return-object v0

    :cond_0
    const-string v0, "GL_TEXTURE_CROP_RECT_OES"

    return-object v0

    :cond_1
    const-string v0, "GL_GENERATE_MIPMAP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2800
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .locals 2

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    const/16 v1, 0x2901

    if-eq v0, v1, :cond_1

    const v1, 0x812f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "GL_LINEAR_MIPMAP_LINEAR"

    return-object v1

    :pswitch_1
    const-string v1, "GL_NEAREST_MIPMAP_LINEAR"

    return-object v1

    :pswitch_2
    const-string v1, "GL_LINEAR_MIPMAP_NEAREST"

    return-object v1

    :pswitch_3
    const-string v1, "GL_NEAREST_MIPMAP_NEAREST"

    return-object v1

    :pswitch_4
    const-string v1, "GL_LINEAR"

    return-object v1

    :pswitch_5
    const-string v1, "GL_NEAREST"

    return-object v1

    :cond_0
    const-string v1, "GL_CLAMP_TO_EDGE"

    return-object v1

    :cond_1
    const-string v1, "GL_REPEAT"

    return-object v1

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2600
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2700
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xde1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "GL_TEXTURE_2D"

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private startLogIndices()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    instance-of v3, p2, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int p1, v5, v4

    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    :cond_3
    instance-of v3, p2, Ljava/nio/CharBuffer;

    if-eqz v3, :cond_6

    move-object v3, p2

    check-cast v3, Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x2

    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v5

    nop

    :goto_2
    div-int/lit8 v6, p1, 0x2

    if-ge v1, v6, :cond_5

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->get()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    :cond_6
    instance-of v3, p2, Ljava/nio/ShortBuffer;

    if-eqz v3, :cond_9

    move-object v3, p2

    check-cast v3, Ljava/nio/ShortBuffer;

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x2

    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    nop

    :goto_3
    div-int/lit8 v6, p1, 0x2

    if-ge v1, v6, :cond_8

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->get()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    :cond_9
    instance-of v3, p2, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_c

    move-object v3, p2

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x4

    :cond_a
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    nop

    :goto_4
    div-int/lit8 v6, p1, 0x4

    if-ge v1, v6, :cond_b

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->get()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_8

    :cond_c
    instance-of v3, p2, Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_f

    move-object v3, p2

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x4

    :cond_d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    nop

    :goto_5
    div-int/lit8 v6, p1, 0x4

    if-ge v1, v6, :cond_e

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->get()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_f
    instance-of v3, p2, Ljava/nio/DoubleBuffer;

    if-eqz v3, :cond_12

    move-object v3, p2

    check-cast v3, Ljava/nio/DoubleBuffer;

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x8

    :cond_10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v5

    nop

    :goto_6
    div-int/lit8 v6, p1, 0x8

    if-ge v1, v6, :cond_11

    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_12
    instance-of v3, p2, Ljava/nio/LongBuffer;

    if-eqz v3, :cond_15

    move-object v3, p2

    check-cast v3, Ljava/nio/LongBuffer;

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->position()I

    move-result v4

    if-eqz v2, :cond_13

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->limit()I

    move-result v5

    sub-int/2addr v5, v4

    mul-int/lit8 p1, v5, 0x8

    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v5

    nop

    :goto_7
    div-int/lit8 v6, p1, 0x8

    if-ge v1, v6, :cond_14

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    invoke-virtual {v3, v4}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Unimplemented Buffer subclass."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .locals 7

    new-array v0, p1, [C

    const/16 v1, 0x1401

    const/4 v2, 0x0

    if-eq p2, v1, :cond_2

    const/16 v1, 0x1403

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p3, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    nop

    :goto_1
    if-ge v2, p1, :cond_3

    const/16 v5, 0xff

    add-int v6, v4, v2

    aget-byte v6, v3, v6

    and-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    nop

    :goto_2
    return-object v0
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toString(II[II)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p4, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v4, p3, v3

    invoke-direct {p0, v0, v4, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toString(I[FI)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[SI)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-short v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private unbindArrays()V
    .locals 1

    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_0
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_1
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_2
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_3
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1

    const-string v0, "glActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    const-string v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    const-string v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    const-string v0, "glBindBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1

    const-string v0, "glBindFramebufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1

    const-string v0, "glBindRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 2

    const-string v0, "glBindTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    const-string v0, "glBlendEquation"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    const-string v0, "glBlendEquationSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "modeRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "modeAlpha"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 2

    const-string v0, "glBlendFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "sfactor"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dfactor"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    const-string v0, "glBlendFuncSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "srcRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "dstRGB"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "srcAlpha"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "dstAlpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 2

    const-string v0, "glBufferData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "data"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 2

    const-string v0, "glBufferSubData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "data"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 1

    const-string v0, "glCheckFramebufferStatusOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glClear(I)V
    .locals 2

    const-string v0, "glClear"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    const-string v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    const-string v0, "glClearDepthf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    const-string v0, "glClearDepthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    const-string v0, "glClearStencil"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    const-string v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 2

    const-string v0, "glClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    const-string v0, "glColor4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    const-string v0, "glColor4ub"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1

    const-string v0, "glColor4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    const-string v0, "glColorMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1

    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glCompressedTexImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v11, p2

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move/from16 v12, p3

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v13, p4

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v14, p5

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v15, p6

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v10, p7

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move v9, v10

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glCompressedTexSubImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v12, p2

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move/from16 v13, p3

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move/from16 v14, p4

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v15, p5

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v11, p6

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v10, p7

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "imageSize"

    move/from16 v9, p8

    invoke-direct {v0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v3, p1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move v8, v11

    move v9, v10

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glCopyTexImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v11, p2

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move/from16 v12, p3

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    move/from16 v13, p4

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v14, p5

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v15, p6

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v10, p7

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v9, p8

    invoke-direct {v0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move v9, v10

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glCopyTexSubImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v11, p2

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move/from16 v12, p3

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move/from16 v13, p4

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    move/from16 v14, p5

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v15, p6

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v10, p7

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v9, p8

    invoke-direct {v0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move v9, v10

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    const-string v0, "glCullFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1

    const-string v0, "glCurrentPaletteMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "matrixpaletteindex"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 2

    const-string v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 2

    const-string v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 2

    const-string v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    const-string v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    const-string v0, "glDepthFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    const-string v0, "glDepthMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "flag"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    const-string v0, "glDepthRangef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    const-string v0, "glDepthRangex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .locals 2

    const-string v0, "glDisable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .locals 2

    const-string v0, "glDisableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    :goto_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .locals 3

    const-string v0, "glDrawArrays"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "first"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1

    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 5

    const-string v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v0, v2

    invoke-direct {p0, v3, v2, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 7

    const-string v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 2

    const-string v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 7

    const-string v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 2

    const-string v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 7

    const-string v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 2

    const-string v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 7

    const-string v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 2

    const-string v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 2

    const-string v0, "glEnable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .locals 2

    const-string v0, "glEnableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    :goto_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8074
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public glFinish()V
    .locals 1

    const-string v0, "glFinish"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    const-string v0, "glFlush"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    const-string v0, "glFogf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 2

    const-string v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 2

    const-string v0, "glFogx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 2

    const-string v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1

    const-string v0, "glFramebufferRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffertarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 7

    const-string v0, "glFramebufferTexture2DOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "level"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    const-string v0, "glFrontFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 8

    const-string v0, "glFrustumf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 8

    const-string v0, "glFrustumx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 2

    const-string v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 2

    const-string v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 2

    const-string v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 2

    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1

    const-string v0, "glGenerateMipmapOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 2

    const-string v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 2

    const-string v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 2

    const-string v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 2

    const-string v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    return-void
.end method

.method public glGetError()I
    .locals 1

    const-string v0, "glGetError"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 2

    const-string v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 2

    const-string v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 7

    const-string v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 2

    const-string v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 2

    const-string v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 2

    const-string v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 2

    const-string v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 2

    const-string v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 2

    const-string v0, "glGetPointerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 2

    const-string v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "glGetString"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 2

    const-string v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 2

    const-string v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 2

    const-string v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 2

    const-string v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 2

    const-string v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 2

    const-string v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 2

    const-string v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 2

    const-string v0, "glHint"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    const-string v0, "glIsBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsEnabled(I)Z
    .locals 1

    const-string v0, "glIsEnabled"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "cap"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsFramebufferOES(I)Z
    .locals 1

    const-string v0, "glIsFramebufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "framebuffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1

    const-string v0, "glIsRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    const/4 v0, 0x0

    return v0
.end method

.method public glIsTexture(I)Z
    .locals 1

    const-string v0, "glIsTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glLightModelf(IF)V
    .locals 2

    const-string v0, "glLightModelf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 2

    const-string v0, "glLightModelx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 2

    const-string v0, "glLightModelxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 2

    const-string v0, "glLightf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 2

    const-string v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 2

    const-string v0, "glLightx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 2

    const-string v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    const-string v0, "glLineWidth"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    const-string v0, "glLineWidthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    const-string v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 2

    const-string v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 2

    const-string v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    const-string v0, "glLoadPaletteFromModelViewMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    const-string v0, "glLogicOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "opcode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 2

    const-string v0, "glMaterialf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 2

    const-string v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 2

    const-string v0, "glMaterialx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 2

    const-string v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1

    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 2

    const-string v0, "glMatrixMode"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 2

    const-string v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 2

    const-string v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 7

    const-string v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 7

    const-string v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    const-string v0, "glNormal3f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    const-string v0, "glNormal3x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1

    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 8

    const-string v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pointer"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    const/4 v4, 0x3

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8

    const-string v0, "glOrthof"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 8

    const-string v0, "glOrthox"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    const-string v0, "glPixelStorei"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    const-string v0, "glPointParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 2

    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1

    const-string v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 2

    const-string v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1

    const-string v0, "glPointSize"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 2

    const-string v0, "glPointSizePointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizex(I)V
    .locals 1

    const-string v0, "glPointSizex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    const-string v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    const-string v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    const-string v0, "glPopMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    const-string v0, "glPushMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 3

    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mantissa"

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 3

    const-string v0, "glQueryMatrixxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glReadPixels"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "x"

    move/from16 v10, p1

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v11, p2

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v12, p3

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v13, p4

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v14, p5

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v15, p6

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "pixels"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1

    const-string v0, "glRenderbufferStorageOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "internalformat"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    const-string v0, "glRotatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    const-string v0, "glRotatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    const-string v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    const-string v0, "glScalef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .locals 1

    const-string v0, "glScalex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    const-string v0, "glScissor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 2

    const-string v0, "glShadeModel"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    const-string v0, "glStencilFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    const-string v0, "glStencilMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    const-string v0, "glStencilOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zfail"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zpass"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1

    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 2

    const-string v0, "glTexEnvf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 2

    const-string v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    const-string v0, "glTexEnvi"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 2

    const-string v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 2

    const-string v0, "glTexEnvx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 2

    const-string v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1

    const-string v0, "glTexGenf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 2

    const-string v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .locals 1

    const-string v0, "glTexGeni"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 2

    const-string v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .locals 1

    const-string v0, "glTexGenx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 2

    const-string v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glTexImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    move/from16 v12, p1

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "level"

    move/from16 v13, p2

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "internalformat"

    move/from16 v14, p3

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v15, p4

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v11, p5

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "border"

    move/from16 v10, p6

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v9, p7

    invoke-direct {v0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v8, p8

    invoke-direct {v0, v1, v8}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move v7, v11

    move v8, v10

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 2

    const-string v0, "glTexParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 2

    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 2

    const-string v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 2

    const-string v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 2

    const-string v0, "glTexParameterx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 2

    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 2

    const-string v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "glTexSubImage2D"

    invoke-direct {v0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct/range {p0 .. p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "level"

    move/from16 v12, p2

    invoke-direct {v0, v1, v12}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    move/from16 v13, p3

    invoke-direct {v0, v1, v13}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    move/from16 v14, p4

    invoke-direct {v0, v1, v14}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v15, p5

    invoke-direct {v0, v1, v15}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "height"

    move/from16 v11, p6

    invoke-direct {v0, v1, v11}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v1, "format"

    move/from16 v10, p7

    invoke-direct {v0, v1, v10}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v9, p8

    invoke-direct {v0, v1, v9}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v2, v0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v3, p1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move v8, v11

    move v9, v10

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    const-string v0, "glTranslatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    const-string v0, "glTranslatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1

    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 7

    const-string v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    const-string v0, "glViewport"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1

    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    const-string v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method
