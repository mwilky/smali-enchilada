.class public Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStore3DESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStore3DESCipherSpi$CBC;,
        Landroid/security/keystore/AndroidKeyStore3DESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x8


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mIvRequired:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    iput p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    iput-boolean p3, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const v0, 0x10000002

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_2

    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_2
    return-void
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x18

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    array-length v0, v0

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, "DESede"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to initialize 3DES AlgorithmParameters with an IV"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain 3DES AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->finalize()V

    return-void
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getAdditionalEntropyAmountForFinish()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "DESede"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Null IV in AlgorithmParameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    return-void

    :cond_5
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Supported: DESede"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Null IV in IvParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only IvParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initKey(ILjava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "DESede"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void

    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DESede"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    const v0, -0x6ffffc17

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v1, :cond_1

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use despite IV not being used by this transformation"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final resetAll()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method
