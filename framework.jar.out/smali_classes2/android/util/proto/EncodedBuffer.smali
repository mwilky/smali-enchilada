.class public final Landroid/util/proto/EncodedBuffer;
.super Ljava/lang/Object;
.source "EncodedBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private mBufferCount:I

.field private final mBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mChunkSize:I

.field private mReadBufIndex:I

.field private mReadBuffer:[B

.field private mReadIndex:I

.field private mReadLimit:I

.field private mReadableSize:I

.field private mWriteBufIndex:I

.field private mWriteBuffer:[B

.field private mWriteIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    if-gtz p1, :cond_0

    const/16 p1, 0x2000

    :cond_0
    iput p1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    return-void
.end method

.method private static dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p3

    const/16 v2, 0x10

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    rem-int/lit8 v4, v3, 0x10

    const/16 v5, 0x20

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, v4

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-byte v4, p3, v3

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    const/16 v6, 0x57

    const/16 v7, 0x30

    const/16 v8, 0xa

    if-ge v5, v8, :cond_2

    add-int v9, v7, v5

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    add-int v9, v6, v5

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    and-int/lit8 v9, v4, 0xf

    int-to-byte v9, v9

    if-ge v9, v8, :cond_3

    add-int/2addr v7, v9

    int-to-char v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    add-int/2addr v6, v9

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static dumpByteString(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    return-void
.end method

.method public static getRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static getRawVarint64Size(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method public static getRawZigZag32Size(I)I
    .locals 1

    invoke-static {p0}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static getRawZigZag64Size(J)I
    .locals 2

    invoke-static {p0, p1}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private nextWriteBuffer()V
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    return-void
.end method

.method private static zigZag32(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static zigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public dumpBuffers(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {p1, v3, v1, v4}, Landroid/util/proto/EncodedBuffer;->dumpByteString(Ljava/lang/String;Ljava/lang/String;I[B)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public editRawFixed32(II)V
    .locals 3

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v1, v2

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public getBytes(I)[B
    .locals 7

    new-array v0, p1, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-static {v5, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    if-lez v5, :cond_1

    iget-object v6, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    return-object v0
.end method

.method public getChunkCount()I
    .locals 1

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedBuffer( mChunkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBuffers.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWriteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWriteBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadBufIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mReadLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawFixed32At(I)I
    .locals 5

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v1, p1, v1

    aget-byte v0, v0, v1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x2

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    add-int/lit8 v3, p1, 0x2

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x3

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    add-int/lit8 v3, p1, 0x3

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int/2addr v3, v4

    aget-byte v2, v2, v3

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public getReadPos()I
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getReadableSize()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    return v0
.end method

.method public getWriteBufIndex()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    return v0
.end method

.method public getWriteIndex()I
    .locals 1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    return v0
.end method

.method public getWritePos()I
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readRawByte()B
    .locals 3

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    :cond_1
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    aget-byte v0, v0, v1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to read too much data mReadBufIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBufferCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mBufferCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReadIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReadLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRawFixed32()I
    .locals 2

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readRawUnsigned()J
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    const/16 v4, 0x40

    if-gt v0, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/util/proto/ProtoParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Varint too long -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public rewindRead()V
    .locals 2

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    return-void
.end method

.method public rewindWriteTo(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p1, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rewindWriteTo only can go backwards"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipRead(I)V
    .locals 3

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    goto :goto_1

    :cond_1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p1, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    const/4 v1, 0x1

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v2, p1, v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    :goto_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipRead with negative amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startEditing()V
    .locals 2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mReadBuffer:[B

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadBufIndex:I

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mReadIndex:I

    return-void
.end method

.method public writeFromThisBuffer(II)V
    .locals 8

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mReadLimit:I

    if-ltz v0, :cond_9

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    if-lt p1, v0, :cond_8

    add-int v0, p1, p2

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mReadableSize:I

    if-gt v0, v1, :cond_7

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_3

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_1

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v0, p2, v0

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v1, p2, v1

    const/4 v2, 0x1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    :goto_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBufIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    div-int v0, p1, v0

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    rem-int v2, p1, v2

    :goto_1
    if-lez p2, :cond_6

    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v3, v4, :cond_4

    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    :cond_4
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Landroid/util/proto/EncodedBuffer;->mBuffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [B

    const/4 v2, 0x0

    :cond_5
    iget v3, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v7, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {v1, v2, v6, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v6, v5

    iput v6, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v2, v5

    sub-int/2addr p2, v5

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to move more data than there is -- srcOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only move forward in the buffer -- srcOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "writeFromThisBuffer before startEditing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRawBuffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([BII)V

    :cond_0
    return-void
.end method

.method public writeRawBuffer([BII)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    :cond_2
    :goto_1
    if-lez p3, :cond_4

    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-ge p3, v1, :cond_3

    move v1, p3

    goto :goto_2

    :cond_3
    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    :goto_2
    move v0, v1

    iget-object v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public writeRawByte(B)V
    .locals 3

    iget v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mChunkSize:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/proto/EncodedBuffer;->nextWriteBuffer()V

    :cond_0
    iget-object v0, p0, Landroid/util/proto/EncodedBuffer;->mWriteBuffer:[B

    iget v1, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/proto/EncodedBuffer;->mWriteIndex:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public writeRawFixed32(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void
.end method

.method public writeRawFixed64(J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void

    :cond_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeRawZigZag32(I)V
    .locals 1

    invoke-static {p1}, Landroid/util/proto/EncodedBuffer;->zigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public writeRawZigZag64(J)V
    .locals 2

    invoke-static {p1, p2}, Landroid/util/proto/EncodedBuffer;->zigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method
