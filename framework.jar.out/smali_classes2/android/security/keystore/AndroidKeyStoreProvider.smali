.class public Landroid/security/keystore/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final DESEDE_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.hardware.keystore_desede"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AndroidKeyStore"

    const-string v1, "Android KeyStore security provider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.hardware.keystore_desede"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "KeyStore.AndroidKeyStore"

    const-string v2, "android.security.keystore.AndroidKeyStoreSpi"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyPairGenerator.EC"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyPairGenerator.RSA"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EC"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "RSA"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "KeyGenerator.AES"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.HmacSHA1"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.HmacSHA224"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.HmacSHA256"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.HmacSHA384"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KeyGenerator.HmacSHA512"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v1, "KeyGenerator.DESede"

    const-string v2, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$DESede"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "AES"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "DESede"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "HmacSHA1"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "HmacSHA224"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "HmacSHA256"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "HmacSHA384"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v1, "HmacSHA512"

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    return-void
.end method

.method private static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 5

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    move-result v3

    move-object v4, p0

    check-cast v4, Ljava/security/interfaces/ECKey;

    invoke-interface {v4}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V

    return-object v1

    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    move-result v3

    move-object v4, p0

    check-cast v4, Ljava/security/interfaces/RSAKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 4

    :try_start_0
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    nop

    const-string v1, "EC"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v1, p0, p1, v2}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v1

    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v1, p0, p1, v2}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Invalid X.509 encoding of public key"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to obtain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " KeyFactory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getKeyCharacteristics(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keymaster/KeyCharacteristics;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/UnrecoverableKeyException;

    throw v2
.end method

.method public static getKeyStoreForUid(I)Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    const-string v1, "AndroidKeyStore"

    invoke-static {v0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-direct {v1, p0}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load AndroidKeyStore KeyStore for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4

    if-eqz p0, :cond_5

    instance-of v0, p0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    goto :goto_0

    :goto_1
    nop

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/security/keystore/KeyStoreCryptoOperation;

    invoke-interface {v1}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v1

    return-wide v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Crypto primitive not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported crypto primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static install()V
    .locals 6

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    const-string v4, "BC"

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v2}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v2, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    :goto_2
    return-void
.end method

.method public static loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyCharacteristics(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    const v1, 0x10000002

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Key algorithm unknown"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    :cond_3
    :goto_1
    invoke-static {p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreSecretKeyFromKeystore(Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    return-object v2

    :cond_4
    new-instance v2, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Key algorithm unknown"

    invoke-direct {v2, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyCharacteristics(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v0

    nop

    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v1

    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyCharacteristics(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    return-object v0
.end method

.method private static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyCharacteristics(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keymaster/KeyCharacteristics;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    iget v1, v0, Landroid/security/keymaster/ExportResult;->resultCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroid/security/keymaster/ExportResult;->exportData:[B

    const v2, 0x10000002

    invoke-virtual {p3, v2}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    nop

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p1, p2, v3, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Failed to load private key"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/security/UnrecoverableKeyException;

    throw v4

    :cond_0
    new-instance v3, Ljava/security/UnrecoverableKeyException;

    const-string v4, "Key algorithm unknown"

    invoke-direct {v3, v4}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Failed to obtain X.509 form of public key"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/security/keymaster/ExportResult;->resultCode:I

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/UnrecoverableKeyException;

    throw v1
.end method

.method private static loadAndroidKeyStoreSecretKeyFromKeystore(Ljava/lang/String;ILandroid/security/keymaster/KeyCharacteristics;)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const v0, 0x10000002

    invoke-virtual {p2, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x20000005

    invoke-virtual {p2, v1}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    new-instance v4, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-direct {v4, p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Unsupported secret key type"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/security/UnrecoverableKeyException;

    throw v4

    :cond_1
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Key algorithm unknown"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
