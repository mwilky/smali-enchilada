.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v1, 0x10000002

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x20000005

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v1, 0x300003eb

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v5}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getUid()I

    move-result v7

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    iget-wide v2, v1, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget v4, v1, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v2, v3, v4}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    new-instance v3, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v4, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    invoke-direct {v4, v5, v6}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void

    :cond_1
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Keystore returned invalid operation handle"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Keystore returned null operation token"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    throw v2

    :cond_4
    new-instance v2, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v2}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private resetAll()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private resetWhilePreservingInitState()V
    .locals 4

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 6

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_1
    throw v1
.end method

.method protected engineReset()V
    .locals 0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Update operation unexpectedly produced output"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getOperationHandle()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    return-wide v0
.end method
