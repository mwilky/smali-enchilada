.class public Landroid/ddm/DdmHandleNativeHeap;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleNativeHeap.java"


# static fields
.field public static final CHUNK_NHGT:I

.field private static mInstance:Landroid/ddm/DdmHandleNativeHeap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NHGT"

    invoke-static {v0}, Landroid/ddm/DdmHandleNativeHeap;->type(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    new-instance v0, Landroid/ddm/DdmHandleNativeHeap;

    invoke-direct {v0}, Landroid/ddm/DdmHandleNativeHeap;-><init>()V

    sput-object v0, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private native getLeakInfo()[B
.end method

.method private handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .locals 5

    invoke-direct {p0}, Landroid/ddm/DdmHandleNativeHeap;->getLeakInfo()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ddm-nativeheap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v2, "NHGT"

    invoke-static {v2}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    array-length v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v1

    :cond_0
    const/4 v1, 0x1

    const-string v2, "Something went wrong"

    invoke-static {v1, v2}, Landroid/ddm/DdmHandleNativeHeap;->createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1
.end method

.method public static register()V
    .locals 2

    sget v0, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    sget-object v1, Landroid/ddm/DdmHandleNativeHeap;->mInstance:Landroid/ddm/DdmHandleNativeHeap;

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

    const-string v0, "ddm-nativeheap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    invoke-static {v2}, Landroid/ddm/DdmHandleNativeHeap;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    sget v1, Landroid/ddm/DdmHandleNativeHeap;->CHUNK_NHGT:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/ddm/DdmHandleNativeHeap;->handleNHGT(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    return-object v1

    :cond_0
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
