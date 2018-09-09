.class public Lcom/android/server/secrecy/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/security/PublicKey;[B)[B
    .locals 3
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "cipherText"    # [B

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "deciphered":[B
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 161
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 162
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 166
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 168
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    return-object v0
.end method

.method static encrypt(Ljava/security/PrivateKey;[B)[B
    .locals 3
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "text"    # [B

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "ciphered":[B
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 177
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 178
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 182
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 184
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    return-object v0
.end method

.method static initRsaKey()V
    .locals 7

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "keyPairGenerator":Ljava/security/KeyPairGenerator;
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 52
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 54
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 56
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    .line 57
    .local v2, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    .line 61
    .local v3, "privateKey":Ljava/security/PrivateKey;
    :try_start_1
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 62
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    const-class v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v4, v2, v5}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/RSAPublicKeySpec;

    .line 63
    .local v5, "rsaPublicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v5}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    .local v6, "modulus":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v5    # "rsaPublicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    .end local v6    # "modulus":Ljava/math/BigInteger;
    goto :goto_1

    .line 71
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_1
    move-exception v4

    .line 73
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 77
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_1
    :try_start_2
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 78
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    const-class v5, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/RSAPrivateKeySpec;

    .line 79
    .local v5, "rsaPrivateKeySpec":Ljava/security/spec/RSAPrivateKeySpec;
    invoke-virtual {v5}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    .line 80
    .restart local v6    # "modulus":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    .end local v5    # "rsaPrivateKeySpec":Ljava/security/spec/RSAPrivateKeySpec;
    .end local v6    # "modulus":Ljava/math/BigInteger;
    goto :goto_2

    .line 87
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v4

    .line 89
    .local v4, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 92
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :goto_2
    return-void
.end method

.method static initRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "privateExponent"    # Ljava/math/BigInteger;

    .line 142
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, p0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 144
    .local v0, "keySpec":Ljava/security/spec/RSAPrivateKeySpec;
    const/4 v1, 0x0

    .line 146
    .local v1, "privateKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 147
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 151
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 152
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    return-object v1
.end method

.method public static initRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "modulus"    # Ljava/math/BigInteger;
    .param p1, "exponent"    # Ljava/math/BigInteger;

    .line 127
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    .local v0, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    const/4 v1, 0x0

    .line 131
    .local v1, "publicKey":Ljava/security/PublicKey;
    :try_start_0
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 132
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 136
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    goto :goto_0

    .line 133
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 137
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :goto_0
    return-object v1
.end method

.method public static shaDigest(Ljava/lang/String;)[B
    .locals 3
    .param p0, "imei"    # Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    .line 99
    .local v0, "digest":[B
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 100
    .local v1, "md":Ljava/security/MessageDigest;
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 105
    goto :goto_0

    .line 102
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method static shrink([BI)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 111
    array-length v0, p0

    div-int/2addr v0, p1

    .line 113
    .local v0, "pieces":I
    new-array v1, v0, [B

    .line 115
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 116
    mul-int v3, v2, p1

    aget-byte v3, p0, v3

    aput-byte v3, v1, v2

    .line 117
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 118
    aget-byte v4, v1, v2

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 115
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v2    # "p":I
    :cond_1
    return-object v1
.end method
