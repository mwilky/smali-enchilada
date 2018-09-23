.class public Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
.super Ljava/lang/Object;
.source "WrappedKey.java"


# static fields
.field private static final APPLICATION_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final GCM_TAG_LENGTH_BITS:I = 0x80

.field private static final KEY_WRAP_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final TAG:Ljava/lang/String; = "WrappedKey"


# instance fields
.field private final mKeyMaterial:[B

.field private final mNonce:[B

.field private final mPlatformKeyGenerationId:I

.field private final mRecoveryStatus:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    iput p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return-void
.end method

.method public constructor <init>([B[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    iput p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return-void
.end method

.method public static fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :try_start_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v1
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    nop

    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getGenerationId()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[BII)V

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/security/KeyStoreException;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStoreException;

    throw v3

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IllegalBlockSizeException should not be thrown by AES/GCM/NoPadding mode."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Android does not support AES/GCM/NoPadding. This should never happen."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key does not expose encoded material. It cannot be wrapped."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ne v6, v2, :cond_0

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v10

    new-instance v11, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v12, 0x80

    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v6, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    nop

    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v6

    const-string v10, "AES"

    invoke-virtual {v1, v6, v10, v9}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v9, "WrappedKey"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Error unwrapping recoverable key with alias \'%s\'"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v7

    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v8

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    const-string v7, "WrappedKey with alias \'%s\' was wrapped with platform key %d, not platform key %d"

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getKeyMaterial()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    return-object v0
.end method

.method public getPlatformKeyGenerationId()I
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    return v0
.end method

.method public getRecoveryStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return v0
.end method
