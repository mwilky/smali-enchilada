.class public Lcom/android/server/locksettings/recoverablekeystore/SecureBox;
.super Ljava/lang/Object;
.source "SecureBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    }
.end annotation


# static fields
.field private static final BIG_INT_02:Ljava/math/BigInteger;

.field private static final CIPHER_ALG:Ljava/lang/String; = "AES"

.field private static final CONSTANT_01:[B

.field private static final EC_ALG:Ljava/lang/String; = "EC"

.field private static final EC_COORDINATE_LEN_BYTES:I = 0x20

.field private static final EC_P256_COMMON_NAME:Ljava/lang/String; = "secp256r1"

.field private static final EC_P256_OPENSSL_NAME:Ljava/lang/String; = "prime256v1"

.field private static final EC_PARAM_A:Ljava/math/BigInteger;

.field private static final EC_PARAM_B:Ljava/math/BigInteger;

.field private static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EC_PUBLIC_KEY_LEN_BYTES:I = 0x41

.field private static final EC_PUBLIC_KEY_PREFIX:B = 0x4t

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final ENC_ALG:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_KEY_LEN_BYTES:I = 0x10

.field private static final GCM_NONCE_LEN_BYTES:I = 0xc

.field private static final GCM_TAG_LEN_BYTES:I = 0x10

.field private static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field private static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field private static final HKDF_SALT:[B

.field private static final KA_ALG:Ljava/lang/String; = "ECDH"

.field private static final MAC_ALG:Ljava/lang/String; = "HmacSHA256"

.field private static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    new-array v0, v0, [[B

    const-string v1, "SECUREBOX"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    const-string v0, "P256 HKDF-SHA-256 AES-128-GCM"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    const-string v0, "SHARED HKDF-SHA-256 AES-128-GCM"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    new-array v0, v2, [B

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v2, v4

    new-instance v4, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    return-void

    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    nop

    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    :try_start_1
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    if-ne p0, v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    throw v2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs concat([[B)[B
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-object v3, p0, v0

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    aput-object v3, p0, v0

    :cond_0
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [B

    const/4 v3, 0x0

    array-length v4, p0

    move v5, v3

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, p0, v3

    array-length v7, v6

    invoke-static {v6, v1, v0, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v6

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method static decodePublicKey([B)Ljava/security/PublicKey;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x41

    invoke-static {p0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v0, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B[B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p1

    if-nez p0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both the private key and shared secret are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p2

    if-eqz p3, :cond_4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p0, :cond_2

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_1

    :cond_2
    const/16 v2, 0x41

    invoke-static {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v3

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    :goto_1
    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v6}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v6

    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {v6, v7, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-static {v7, v4, v5, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v8

    return-object v8

    :cond_3
    new-instance v2, Ljavax/crypto/AEADBadTagException;

    const-string v3, "The payload was not encrypted by SecureBox v2"

    invoke-direct {v2, v3}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Encrypted payload must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static emptyByteArrayIfNull([B)[B
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 7

    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x41

    new-array v4, v3, [B

    array-length v5, v2

    sub-int/2addr v3, v5

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v1

    rsub-int/lit8 v3, v3, 0x21

    array-length v5, v1

    invoke-static {v1, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v3, 0x4

    aput-byte v3, v4, v6

    return-object v4
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B[B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v1

    if-nez v0, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Both the public key and shared secret are empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object v3

    if-nez v0, :cond_2

    const/4 v4, 0x0

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v5

    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    :goto_1
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genRandomNonce()[B

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [[B

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v11, 0x1

    aput-object v1, v9, v11

    invoke-static {v9}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v9

    sget-object v12, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {v9, v12, v6}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object v12

    invoke-static {v12, v7, v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object v13

    const/4 v14, 0x3

    if-nez v4, :cond_3

    new-array v14, v14, [[B

    sget-object v15, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object v15, v14, v10

    aput-object v7, v14, v11

    aput-object v13, v14, v8

    invoke-static {v14}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v8

    return-object v8

    :cond_3
    const/4 v15, 0x4

    new-array v15, v15, [[B

    sget-object v16, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object v16, v15, v10

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v10

    aput-object v10, v15, v11

    aput-object v7, v15, v8

    aput-object v13, v15, v14

    invoke-static {v15}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v8

    return-object v8
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    const-string v3, "Unable to find the NIST P-256 curve"

    invoke-direct {v2, v3, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static genRandomNonce()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    :try_start_1
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HmacSHA256"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    new-array v0, p1, [B

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/crypto/AEADBadTagException;

    const-string v3, "The encrypted payload is too short"

    invoke-direct {v2, v3}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Point lies outside of the expected curve"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Point lies outside of the expected curve"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
