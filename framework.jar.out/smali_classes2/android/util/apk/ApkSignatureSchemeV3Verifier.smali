.class public Landroid/util/apk/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV3Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;,
        Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final PROOF_OF_ROTATION_ATTR_ID:I = 0x3ba06f8c

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x3


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    const v0, -0xfac9740

    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    return-object v0
.end method

.method static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/apk/ApkSigningBlockUtils;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v3

    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    nop

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityRootHash(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static getVerityRootHash(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v3

    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v4

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .locals 1

    const/16 v0, 0x301

    if-eq p0, v0, :cond_0

    const/16 v0, 0x421

    if-eq p0, v0, :cond_0

    const/16 v0, 0x423

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    nop

    nop

    :try_start_1
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    :goto_0
    nop

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v6
    :try_end_2
    .catch Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse/verify signer #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " block"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-lt v0, v5, :cond_5

    if-eqz v2, :cond_5

    if-ne v0, v5, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    :cond_1
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-static {v5, v6, v7, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v6

    iput-object v6, v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->verityRootHash:[B

    :cond_2
    return-object v2

    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "APK Signature Scheme V3 only supports one signer: multiple signers found."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_2
    move-exception v4

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v0

    return-object v0
.end method

.method private static verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private static verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    const v4, 0x3ba06f8c

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_3

    invoke-static {v2, p2}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    move-result-object v1

    :try_start_0
    iget-object v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v5, v1, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Terminal certificate in Proof-of-rotation record does not match APK signing certificate"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    nop

    :goto_2
    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to encode certificate when comparing Proof-of-rotation record and signing certificate"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    new-instance v2, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    invoke-direct {v2, v0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;-><init>([Ljava/security/cert/X509Certificate;Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;)V

    return-object v2
.end method

.method private static verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v1, v1, 0x1

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v10

    if-eqz v3, :cond_2

    nop

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    iget-object v13, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v14, :cond_0

    iget-object v14, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v13, v14}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    invoke-virtual {v13, v7}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v13, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v16, v6

    goto :goto_1

    :cond_1
    new-instance v14, Ljava/lang/SecurityException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v6

    const-string v6, "Unable to verify signature of certificate #"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " using "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when verifying Proof-of-rotation record"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    move-object/from16 v16, v6

    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    if-eqz v3, :cond_4

    if-ne v2, v11, :cond_3

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signing algorithm ID mismatch for certificate #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " when verifying Proof-of-rotation record"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    :goto_2
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v3, v12

    new-instance v12, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v12, v3, v6}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v3, v12

    move v2, v9

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encountered duplicate entries in Proof-of-rotation record at certificate #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ".  All signing certificates should be unique"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_6
    move-object/from16 v13, p1

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    invoke-direct {v0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :catch_3
    move-exception v0

    move-object/from16 v13, p1

    :goto_3
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to decode certificate #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " when verifying Proof-of-rotation record"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    :goto_4
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to verify signature over signed data for certificate #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " when verifying Proof-of-rotation record"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    :goto_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to parse Proof-of-rotation record"

    invoke-direct {v6, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;
        }
    .end annotation

    move-object/from16 v1, p2

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_14

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v6

    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v8

    move v8, v7

    move v7, v0

    :goto_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v11, -0x1

    const/16 v12, 0x8

    if-eqz v0, :cond_4

    add-int/lit8 v7, v7, 0x1

    :try_start_0
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    if-lt v13, v12, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    if-eq v8, v11, :cond_1

    invoke-static {v12, v8}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v11

    if-lez v11, :cond_2

    :cond_1
    move v8, v12

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    move-object v0, v11

    move-object v10, v0

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v11, Ljava/lang/SecurityException;

    const-string v12, "Signature record too short"

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to parse signature record #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_4
    if-ne v8, v11, :cond_6

    if-nez v7, :cond_5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v11, "No signatures found"

    invoke-direct {v0, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v11, "No supported signatures found"

    invoke-direct {v0, v11}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v11

    nop

    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v13

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    move-object v15, v0

    nop

    :try_start_1
    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v12, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v12, v6}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v14}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v15, :cond_7

    :try_start_2
    invoke-virtual {v12, v15}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    goto/16 :goto_7

    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v12, v2}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v12, v10}, Ljava/security/Signature;->verify([B)Z

    move-result v17
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_8

    move/from16 v12, v17

    nop

    nop

    if-eqz v12, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v18, v5

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object/from16 v19, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v0

    move/from16 v21, v7

    move-object/from16 v7, v19

    const/16 v17, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v22, v10

    add-int/lit8 v10, v17, 0x1

    :try_start_4
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v17
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v23, v17

    move-object/from16 v24, v5

    move-object/from16 v0, v23

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v25, v11

    const/16 v11, 0x8

    if-lt v5, v11, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v26, v12

    move-object/from16 v12, v20

    :try_start_7
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v5, v8, :cond_8

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    move-object v0, v11

    move-object v7, v0

    :cond_8
    move/from16 v17, v10

    move-object/from16 v20, v12

    move-object/from16 v10, v22

    move-object/from16 v5, v24

    move-object/from16 v11, v25

    move/from16 v12, v26

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v12, v20

    goto :goto_3

    :cond_9
    move/from16 v26, v12

    move-object/from16 v12, v20

    new-instance v5, Ljava/io/IOException;

    const-string v11, "Record too short"

    invoke-direct {v5, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v12, v20

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v12, v20

    :goto_3
    new-instance v5, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v13

    const-string v13, "Failed to parse digest record #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_a
    move-object/from16 v24, v5

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v12, v20

    invoke-interface {v9, v12}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [B

    if-eqz v11, :cond_c

    invoke-static {v11, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v28, v7

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v7

    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object/from16 v28, v7

    :goto_4
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v29, v5

    add-int/lit8 v5, v0, 0x1

    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    move-object/from16 v30, v0

    :try_start_8
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v31, v7

    move-object/from16 v7, v30

    :try_start_9
    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_6

    nop

    nop

    move/from16 v32, v8

    new-instance v8, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v8, v0, v7}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v8

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move v0, v5

    move/from16 v5, v29

    move-object/from16 v7, v31

    move/from16 v8, v32

    goto :goto_5

    :catch_6
    move-exception v0

    move/from16 v32, v8

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v7, v30

    :goto_6
    new-instance v8, Ljava/lang/SecurityException;

    move-object/from16 v33, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v9

    const-string v9, "Failed to decode certificate #"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_d
    move/from16 v29, v5

    move-object/from16 v31, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    if-ne v8, v3, :cond_f

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    if-ne v9, v4, :cond_e

    move/from16 v35, v0

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v13, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;Ljava/util/List;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v16

    return-object v16

    :cond_e
    move/from16 v35, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "maxSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move/from16 v35, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "minSdkVersion mismatch between signed and unsigned in v3 signer block."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move/from16 v35, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Public key mismatch between certificate and signature record"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v35, v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No certificates listed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v10, p1

    move-object/from16 v28, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature did not verify"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v21, v7

    move/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v22, v10

    move-object/from16 v25, v11

    move-object/from16 v27, v13

    move-object/from16 v10, p1

    :goto_7
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to verify "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signature"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    move-object/from16 v10, p1

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signer not supported by this platform version. This platform: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", signer minSdkVersion: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", maxSdkVersion: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
