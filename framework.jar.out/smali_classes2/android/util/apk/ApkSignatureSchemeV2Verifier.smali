.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field private static final STRIPPING_PROTECTION_ATTR_ID:I = -0x41100ff3


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

    const v0, 0x7109871a

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
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/util/apk/ApkSigningBlockUtils;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v3

    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    nop

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v0, v4, v2}, Landroid/util/apk/ApkVerityBuilder;->generateFsverityRootHash(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;Landroid/util/apk/SignatureInfo;)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v3

    iget-object v4, v3, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->verityRootHash:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
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
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    nop

    :try_start_1
    iget-object v4, p1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_0
    nop

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :try_start_2
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

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

    :cond_0
    const/4 v5, 0x1

    if-lt v0, v5, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_1

    invoke-static {v1, p0, p1}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    nop

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-static {v6, v7, v8, p1}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v5

    :cond_2
    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/security/cert/X509Certificate;

    invoke-direct {v6, v7, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;-><init>([[Ljava/security/cert/X509Certificate;[B)V

    return-object v6

    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No content digests found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No signers found"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v4

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Failed to read list of signers"

    invoke-direct {v5, v6, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v1

    return-object v1
.end method

.method private static verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;
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
    invoke-static {v0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

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
    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;Z)Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;

    move-result-object v0

    iget-object v1, v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerifiedSigner;->certs:[[Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private static verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v3, -0x41100ff3

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2 Signature Scheme Stripping Protection Attribute  value too small.  Expected 4 bytes, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remaining buffer too short to contain additional attribute ID. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v5

    move v5, v4

    move v4, v0

    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v8, -0x1

    const/16 v9, 0x8

    if-eqz v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v9, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    if-eq v5, v8, :cond_1

    invoke-static {v9, v5}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v8

    if-lez v8, :cond_2

    :cond_1
    move v5, v9

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v8

    move-object v0, v8

    move-object v7, v0

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Signature record too short"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse signature record #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_4
    if-ne v5, v8, :cond_6

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v8, "No supported signatures found"

    invoke-direct {v0, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    nop

    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v10

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    move-object v12, v0

    nop

    :try_start_1
    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v13, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v13, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v13}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v12, :cond_7

    :try_start_2
    invoke-virtual {v13, v12}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_7

    :cond_7
    :goto_1
    :try_start_3
    invoke-virtual {v13, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v13, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v14
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_8

    move v13, v14

    nop

    nop

    if-eqz v13, :cond_11

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    const/4 v0, 0x0

    :goto_2
    move/from16 v17, v0

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v18, v2

    add-int/lit8 v2, v17, 0x1

    :try_start_4
    invoke-static {v14}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_4

    move/from16 v19, v4

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v20, v7

    const/16 v7, 0x8

    if-lt v4, v7, :cond_9

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v4, v5, :cond_8

    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    move-object v0, v7

    move-object v9, v0

    :cond_8
    move v0, v2

    move-object/from16 v2, v18

    move/from16 v4, v19

    move-object/from16 v7, v20

    goto :goto_2

    :cond_9
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Record too short"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v20, v7

    goto :goto_3

    :catch_4
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v7

    :goto_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "Failed to parse digest record #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_a
    move-object/from16 v18, v2

    move/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-interface {v6, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v4, p1

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [B

    if-eqz v7, :cond_c

    invoke-static {v7, v9}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_4
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v22, v2

    add-int/lit8 v2, v0, 0x1

    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    move-object/from16 v23, v0

    :try_start_7
    new-instance v0, Ljava/io/ByteArrayInputStream;
    :try_end_7
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v24, v4

    move-object/from16 v4, v23

    :try_start_8
    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_6

    move/from16 v25, v5

    move-object/from16 v5, p2

    :try_start_9
    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_5

    nop

    nop

    new-instance v5, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v5, v0, v4}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v0, v5

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    move v0, v2

    move/from16 v2, v22

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move/from16 v25, v5

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v4, v23

    :goto_6
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v26, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v6

    const-string v6, "Failed to decode certificate #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_d
    move/from16 v22, v2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyAdditionalAttributes(Ljava/nio/ByteBuffer;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/X509Certificate;

    return-object v6

    :cond_e
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Public key mismatch between certificate and signature record"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "No certificates listed"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    move/from16 v25, v5

    move-object/from16 v27, v6

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " signature did not verify"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v19, v4

    move/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    :goto_7
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to verify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
