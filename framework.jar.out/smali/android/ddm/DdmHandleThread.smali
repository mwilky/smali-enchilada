.class public Landroid/ddm/DdmHandleThread;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleThread.java"


# static fields
.field public static final CHUNK_STKL:I

.field public static final CHUNK_THCR:I

.field public static final CHUNK_THDE:I

.field public static final CHUNK_THEN:I

.field public static final CHUNK_THST:I

.field private static mInstance:Landroid/ddm/DdmHandleThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "THEN"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    const-string v0, "THCR"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THCR:I

    const-string v0, "THDE"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THDE:I

    const-string v0, "THST"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    const-string v0, "STKL"

    invoke-static {v0}, Landroid/ddm/DdmHandleThread;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    new-instance v0, Landroid/ddm/DdmHandleThread;

    invoke-direct {v0}, Landroid/ddm/DdmHandleThread;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    add-int/2addr v4, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    add-int/2addr v4, v6

    add-int/2addr v4, v1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    :cond_0
    add-int/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v1, p1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/ddm/DdmHandleThread;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v2, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(ILjava/nio/ByteBuffer;)V

    return-object v1
.end method

.method private handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5

    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getStackTraceById(I)[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    const-string v4, "Stack trace unavailable"

    invoke-static {v3, v4}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-direct {p0, v2, v1}, Landroid/ddm/DdmHandleThread;->createStackChunk([Ljava/lang/StackTraceElement;I)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v3

    return-object v3
.end method

.method private handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 3

    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->threadNotify(Z)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 6

    invoke-static {p1}, Landroid/ddm/DdmHandleThread;->wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/dalvik/ddmc/DdmVmInternal;->getThreadStats()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    const/4 v4, 0x0

    array-length v5, v1

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v2

    :cond_0
    const/4 v2, 0x1

    const-string v3, "Can\'t build THST chunk"

    invoke-static {v2, v3}, Landroid/ddm/DdmHandleThread;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v2

    return-object v2
.end method

.method public static register()V
    .locals 2

    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    sget v0, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    sget-object v1, Landroid/ddm/DdmHandleThread;->mInstance:Landroid/ddm/DdmHandleThread;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 0

    return-void
.end method

.method public disconnected()V
    .locals 0

    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 4

    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THEN:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHEN(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_0
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_THST:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleTHST(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_1
    sget v1, Landroid/ddm/DdmHandleThread;->CHUNK_STKL:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleThread;->handleSTKL(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
