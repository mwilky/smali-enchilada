.class Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;,
        Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CHUNK_SIZE:I = 0x10000


# instance fields
.field private mBuffered:[B

.field private mBufferedLength:I

.field private mBufferedOffset:I

.field private mConsumedInputSizeBytes:J

.field private final mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private final mMaxChunkSize:I

.field private mProducedOutputSizeBytes:J


# direct methods
.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iput p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    return-void
.end method


# virtual methods
.method public doFinal([BII[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->flush()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v1, p4, p5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v4, v1, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-static {v0, v2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v2

    return-object v2

    :cond_1
    iget v2, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    throw v2

    :cond_2
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2
.end method

.method public flush()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-gtz v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    const/4 v2, 0x1

    if-lez v1, :cond_9

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-static {v1, v3, v4}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    iget-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v3, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v3

    if-eqz v3, :cond_8

    iget v4, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    if-ne v4, v2, :cond_7

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    if-gtz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-lt v2, v4, :cond_2

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    const/4 v2, 0x0

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    array-length v2, v1

    iget v4, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    :goto_1
    iget v2, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    if-gt v2, v4, :cond_6

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v2, :cond_5

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    if-lez v2, :cond_5

    if-nez v0, :cond_4

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v2, :cond_3

    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v2, v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    return-object v2

    :cond_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v2

    :cond_4
    :try_start_0
    iget-object v2, v3, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_5
    :goto_2
    goto :goto_0

    :cond_6
    new-instance v2, Landroid/security/KeyStoreException;

    const/16 v4, -0x3e8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_7
    iget v2, v3, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    throw v2

    :cond_8
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2

    :cond_9
    :goto_3
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-lez v1, :cond_b

    new-instance v1, Landroid/security/KeyStoreException;

    const/16 v3, -0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore failed to consume last "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-eq v5, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    const-string v2, "byte"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of input"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_5

    :cond_c
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    :goto_5
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v1
.end method

.method public getConsumedInputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public getProducedOutputSizeBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public update([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    if-nez p3, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_c

    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    add-int/2addr v1, p3

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mMaxChunkSize:I

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    sub-int v7, v1, v2

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    move v6, v7

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    array-length v1, p1

    if-ne p3, v1, :cond_2

    move-object v1, p1

    array-length v7, p1

    goto :goto_1

    :cond_2
    move v6, p3

    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iget v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v1

    move v7, v6

    :goto_1
    add-int/2addr p2, v7

    sub-int/2addr p3, v7

    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v4, v7

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    iget-object v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {v2, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)Landroid/security/keymaster/OperationResult;

    move-result-object v2

    if-eqz v2, :cond_b

    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    :cond_3
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    const/16 v4, -0x3e8

    if-gtz v3, :cond_5

    if-gtz p3, :cond_4

    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iput v5, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    array-length v3, v1

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed nothing from max-sized chunk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_5
    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    array-length v5, v1

    if-ge v3, v5, :cond_9

    iput-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBuffered:[B

    iget v3, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedOffset:I

    array-length v3, v1

    iget v4, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mBufferedLength:I

    :goto_2
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    array-length v3, v3

    if-lez v3, :cond_8

    if-lez p3, :cond_6

    if-nez v0, :cond_8

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v0, v3

    :try_start_0
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_6
    if-nez v0, :cond_7

    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    goto :goto_3

    :cond_7
    :try_start_1
    iget-object v3, v2, Landroid/security/keymaster/OperationResult;->output:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    :goto_3
    iget-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v6, v3

    int-to-long v8, v6

    add-long/2addr v4, v8

    iput-wide v4, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v3

    :catch_1
    move-exception v3

    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to buffer output"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_8
    :goto_4
    goto/16 :goto_0

    :cond_9
    new-instance v3, Landroid/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keystore consumed more input than provided. Provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", consumed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/security/keymaster/OperationResult;->inputConsumed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_a
    iget v3, v2, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    throw v3

    :cond_b
    new-instance v3, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v3}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v3

    :cond_c
    if-nez v0, :cond_d

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_5

    :cond_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_5
    iget-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-object v1
.end method
