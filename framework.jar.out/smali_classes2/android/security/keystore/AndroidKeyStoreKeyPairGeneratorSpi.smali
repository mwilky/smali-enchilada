.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyStoreKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$EC;,
        Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi$RSA;
    }
.end annotation


# static fields
.field private static final EC_DEFAULT_KEY_SIZE:I = 0x100

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field private static final SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mEntryUid:I

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-224"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp224r1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-256"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp256r1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "prime256v1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-384"

    const/16 v2, 0x180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp384r1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "p-521"

    const/16 v2, 0x209

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    const-string/jumbo v1, "secp521r1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    sget-object v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x500000c8

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    nop

    :goto_0
    return-void
.end method

.method private static checkValidKeySize(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    sget-object v0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EC key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bits. Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_SIZES:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x200

    if-lt p1, v0, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructKeyGenerationArguments()Landroid/security/keymaster/KeymasterArguments;
    .locals 4

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    int-to-long v1, v1

    const v3, 0x30000003

    invoke-virtual {v0, v3, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const v2, 0x10000002

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    const v2, 0x20000001

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    const v2, 0x20000004

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const v2, 0x20000006

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    const v2, 0x20000005

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000190

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000191

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    const v2, 0x60000192

    invoke-virtual {v0, v2, v1}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x700000ca

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_0
    return-object v0
.end method

.method private createCertificateChain(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v2, -0x6ffffd3c

    invoke-virtual {v1, v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAttestationChain(Ljava/lang/String;Ljava/security/KeyPair;Landroid/security/keymaster/KeymasterArguments;)Ljava/lang/Iterable;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateBytes(Ljava/security/KeyPair;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private generateKeystoreKeyPair(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    new-instance v6, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v6}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, -0x44

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v2, "Failed to generate key pair"

    invoke-direct {v1, v2}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    const-string v3, "Failed to generate key pair"

    invoke-direct {v1, v3, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-direct {p0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2
.end method

.method private generateSelfSignedCertificateBytes(Ljava/security/KeyPair;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain encoded form of self-signed certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to generate self-signed certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-array v4, v2, [B

    nop

    move-object v2, v3

    :goto_0
    move-object v3, v4

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    const/4 v5, 0x0

    nop

    :try_start_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    new-instance v4, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v5

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v8}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v7

    :catchall_0
    move-exception v6

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V

    :goto_2
    throw v6
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method private getAttestationChain(Ljava/lang/String;Ljava/security/KeyPair;Landroid/security/keymaster/KeymasterArguments;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            "Landroid/security/keymaster/KeymasterArguments;",
            ")",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p1, p3, v0}, Landroid/security/KeyStore;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attestation certificate chain contained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " entries. At least two are required."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/security/ProviderException;

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    const-string v4, "Failed to generate attestation certificate chain"

    invoke-direct {v2, v4, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v7

    if-ne v7, p1, :cond_3

    move v3, v6

    move v4, v7

    goto :goto_2

    :cond_3
    if-ne v3, v2, :cond_4

    move v3, v6

    move v4, v7

    goto :goto_1

    :cond_4
    if-ge v4, p1, :cond_5

    if-le v7, v4, :cond_6

    move v3, v6

    move v4, v7

    goto :goto_1

    :cond_5
    if-ge v7, v4, :cond_6

    if-lt v7, p1, :cond_6

    move v3, v6

    move v4, v7

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    :goto_2
    if-ne v3, v2, :cond_8

    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WithECDSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    nop

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    add-int/lit16 v4, p1, -0xf0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v9

    if-le v9, v4, :cond_c

    goto :goto_3

    :cond_c
    if-ne v5, v2, :cond_d

    move v5, v8

    move v6, v9

    goto :goto_4

    :cond_d
    if-le v9, v6, :cond_e

    move v5, v8

    move v6, v9

    :cond_e
    :goto_4
    goto :goto_3

    :cond_f
    if-ne v5, v2, :cond_10

    return-object v1

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WithRSA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultKeySize(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 v0, 0x100

    return v0

    :cond_0
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x800

    return v0
.end method

.method private initAlgorithmSpecificParameters()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    instance-of v1, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAME_TO_SIZE:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v5, v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v2, v5, :cond_1

    :goto_0
    goto/16 :goto_3

    :cond_1
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EC key size must match  between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported EC curve name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->SUPPORTED_EC_NIST_CURVE_NAMES:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-nez v0, :cond_4

    goto/16 :goto_3

    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "EC may only use ECGenParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v1, 0x0

    instance-of v4, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v4, :cond_9

    move-object v4, v0

    check-cast v4, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v5, v2, :cond_7

    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    goto :goto_1

    :cond_7
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v5

    if-ne v2, v5, :cond_8

    :goto_1
    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RSA key size must match  between "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    if-nez v0, :cond_d

    :goto_2
    if-nez v1, :cond_a

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    :cond_a
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v3, :cond_c

    sget-object v2, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_b

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    nop

    :goto_3
    return-void

    :cond_b
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported RSA public exponent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Maximum supported value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/security/keymaster/KeymasterArguments;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RSA public exponent must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "RSA may only use RSAKeyGenParameterSpec"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private loadKeystoreKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    invoke-static {v0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to load generated key pair from keystore"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private resetAll()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    const/4 v1, 0x0

    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    invoke-virtual {v0, v1, p2, v2, p3}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/security/ProviderException;

    invoke-static {v0}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    invoke-direct {v1, p4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private storeCertificateChain(ILjava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "USRCERT_"

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "Failed to store certificate"

    invoke-direct {p0, v1, v2, p1, v3}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    const-string v2, "CACERT_"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "Failed to store attestation CA certificate"

    invoke-direct {p0, v2, v3, p1, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificate(Ljava/lang/String;[BILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    invoke-static {v2, v3, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    nop

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->constructKeyGenerationArguments()Landroid/security/keymaster/KeymasterArguments;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1, v0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->generateKeystoreKeyPair(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BI)V

    invoke-direct {p0, v2}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->loadKeystoreKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->createCertificateChain(Ljava/lang/String;Ljava/security/KeyPair;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->storeCertificateChain(ILjava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    nop

    if-nez v3, :cond_3

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    invoke-static {v5, v6, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_3
    return-object v4

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    new-instance v5, Landroid/security/keystore/SecureKeyImportUnavailableException;

    invoke-direct {v5, v4}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_4
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v3, :cond_5

    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    invoke-static {v5, v6, v7}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_5
    throw v4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    const/4 v0, 0x0

    move v3, v0

    if-eqz v2, :cond_d

    const/4 v4, 0x0

    :try_start_0
    iget v5, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    instance-of v6, v2, Landroid/security/keystore/KeyGenParameterSpec;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Landroid/security/keystore/KeyGenParameterSpec;

    goto/16 :goto_2

    :cond_0
    instance-of v6, v2, Landroid/security/KeyPairGeneratorSpec;

    if-eqz v6, :cond_c

    move-object v6, v2

    check-cast v6, Landroid/security/KeyPairGeneratorSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeyType()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_1

    nop

    :try_start_2
    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v10

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_3
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    const-string v8, "Invalid key type in parameters"

    invoke-direct {v7, v8, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    :goto_0
    if-eq v5, v8, :cond_3

    const/4 v10, 0x3

    if-ne v5, v10, :cond_2

    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v11, "NONE"

    const-string v12, "SHA-1"

    const-string v13, "SHA-224"

    const-string v14, "SHA-256"

    const-string v15, "SHA-384"

    const-string v16, "SHA-512"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v10, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xf

    invoke-direct {v10, v11, v12}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v11, "NONE"

    const-string v12, "MD5"

    const-string v13, "SHA-1"

    const-string v14, "SHA-224"

    const-string v15, "SHA-256"

    const-string v16, "SHA-384"

    const-string v17, "SHA-512"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v11, "NoPadding"

    const-string v12, "PKCS1Padding"

    const-string v13, "OAEPPadding"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v11, "PKCS1"

    const-string v12, "PSS"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v10, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    nop

    :goto_1
    nop

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v11

    if-eq v11, v7, :cond_4

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getKeySize()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_4
    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v11

    if-eqz v11, :cond_5

    nop

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_5
    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v6}, Landroid/security/KeyPairGeneratorSpec;->isEncryptionRequired()Z

    move-result v11

    move v4, v11

    invoke-virtual {v10, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v11

    nop

    nop

    nop

    move-object v6, v9

    :goto_2
    :try_start_4
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v9

    iput v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEntryUid:I

    iput-object v6, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput v5, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterAlgorithm:I

    iput-boolean v4, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mEncryptionAtRestRequired:Z

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v9

    iput v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->initAlgorithmSpecificParameters()V

    iget v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    if-ne v9, v7, :cond_6

    invoke-static {v5}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->getDefaultKeySize(I)I

    move-result v7

    iput v7, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    :cond_6
    iget v7, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeySizeBits:I

    invoke-static {v5, v7}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->checkValidKeySize(II)V

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_b

    :try_start_5
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v9

    iput-object v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterBlockModes:[I

    nop

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    array-length v9, v8

    :goto_3
    if-ge v0, v9, :cond_8

    aget v10, v8, v0

    nop

    invoke-static {v10}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v11

    if-eqz v11, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". See "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v9, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " documentation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    nop

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_4

    :cond_9
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeymasterDigests:[I

    :goto_4
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    iget-object v8, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v0, v8}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    nop

    :try_start_6
    iput-object v7, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v8, p2

    :try_start_7
    iput-object v8, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, v1, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x1

    if-nez v0, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_a
    return-void

    :catch_1
    move-exception v0

    move-object/from16 v8, p2

    :try_start_8
    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v7, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_b
    move-object/from16 v8, p2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "KeyStore entry alias not provided"

    invoke-direct {v0, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v8, p2

    new-instance v7, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v7, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_c
    move-object/from16 v8, p2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported params class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Supported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v8, p2

    goto :goto_5

    :cond_d
    move-object/from16 v8, p2

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must supply params of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :goto_5
    if-nez v3, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/AndroidKeyStoreKeyPairGeneratorSpi;->resetAll()V

    :cond_e
    throw v0
.end method
