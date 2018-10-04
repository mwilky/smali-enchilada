.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
.super Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GCM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final IV_LENGTH_BYTES:I = 0xc

.field private static final MAX_SUPPORTED_TAG_LENGTH_BITS:I = 0x80

.field static final MIN_SUPPORTED_TAG_LENGTH_BITS:I = 0x60


# instance fields
.field private mTagLengthBits:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;-><init>(II)V

    const/16 v0, 0x80

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    int-to-long v0, v0

    const v2, 0x300003eb

    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    return-void
.end method

.method protected final createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 3

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationStreamer;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V

    return-object v1
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    :try_start_0
    const-string v1, "GCM"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to initialize GCM AlgorithmParameters"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to obtain GCM AlgorithmParameters"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->getIv()[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getTagLengthBits()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return v0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV required when decrypting. Use GCMParameterSpec or GCM AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "GCM"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    return-void

    :cond_2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV and tag length required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Supported: GCM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "GCMParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p1, Ljavax/crypto/spec/GCMParameterSpec;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v2

    const/16 v3, 0x60

    if-lt v2, v3, :cond_2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_2

    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->setIv([B)V

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    return-void

    :cond_2
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported tag length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bits. Supported lengths: 96, 104, 112, 120, 128"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported IV length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes. Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes long IV supported"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Null IV in GCMParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only GCMParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final resetAll()V
    .locals 1

    const/16 v0, 0x80

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;->mTagLengthBits:I

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .locals 0

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->resetWhilePreservingInitState()V

    return-void
.end method
