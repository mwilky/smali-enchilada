.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;
.source "ApkSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureVerifier$Result;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CORES:I

.field private static final TAG:Ljava/lang/String; = "ApkSignatureVerifier"

.field private static final sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private static sIsPerfLockAcquired:Z

.field private static sPerfBoost:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    :goto_0
    sput v1, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const/4 v0, 0x0

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    return v0
.end method

.method static synthetic access$100(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p0

    new-array v0, v0, [Landroid/content/pm/Signature;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0, p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    invoke-static {v0}, Landroid/util/apk/ApkSignatureVerifier;->readFullyIgnoringContents(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public static plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x3

    const/16 v1, -0x67

    if-gt p1, v0, :cond_5

    const-string v2, "certsOnlyV3"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v6

    new-array v7, v5, [[Ljava/security/cert/Certificate;

    iget-object v8, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    aput-object v8, v7, v2

    invoke-static {v7}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    if-eqz v11, :cond_0

    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/pm/Signature;

    move-object v9, v11

    iget-object v11, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    move-object v10, v11

    move v11, v2

    :goto_0
    array-length v12, v9

    if-ge v11, v12, :cond_0

    new-instance v12, Landroid/content/pm/Signature;

    iget-object v13, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v13, v13, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v12, v9, v11

    iget-object v12, v6, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v12, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v11, v8, v0, v9, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v11

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    move-exception v6

    if-ge p1, v0, :cond_4

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    const-string v6, "certsOnlyV2"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    :try_start_2
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    new-instance v8, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v8, v7, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v8

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_3
    move-exception v6

    if-ge p1, v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    if-gt p1, v5, :cond_1

    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :try_start_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static readFullyIgnoringContents(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/16 v1, 0x1000

    new-array v0, v1, [B

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    array-length v4, v0

    invoke-virtual {p0, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 13
    .param p1    # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$SignatureSchemeVersion;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x3

    const/16 v1, -0x67

    if-gt p1, v0, :cond_5

    const-string/jumbo v2, "verifyV3"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    nop

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV3Verifier;->verify(Ljava/lang/String;)Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;

    move-result-object v5

    new-array v6, v2, [[Ljava/security/cert/Certificate;

    iget-object v7, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    if-eqz v11, :cond_0

    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/content/pm/Signature;

    move-object v9, v11

    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    move-object v10, v11

    nop

    :goto_0
    array-length v11, v9

    if-ge v8, v11, :cond_0

    new-instance v11, Landroid/content/pm/Signature;

    iget-object v12, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v12, v12, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v11, v9, v8

    iget-object v11, v5, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedSigner;->por:Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;

    iget-object v11, v11, Landroid/util/apk/ApkSignatureSchemeV3Verifier$VerifiedProofOfRotation;->flagsList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v8, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v8, v7, v0, v9, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I[Landroid/content/pm/Signature;[I)V
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v8

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_1
    move-exception v5

    if-ge p1, v0, :cond_4

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    const-string/jumbo v5, "verifyV2"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_2
    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-static {v5}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    new-instance v7, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v7, v6, v0}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_2
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-object v7

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " using APK Signature Scheme v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_3
    move-exception v5

    if-ge p1, v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    nop

    if-gt p1, v2, :cond_1

    invoke-static {p0, v2}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :try_start_4
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No APK Signature Scheme v2 signature in package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    :try_start_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No APK Signature Scheme v3 signature in package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_5
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No signature found in package of version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or newer for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private static verifyV1Signature(Ljava/lang/String;Z)Landroid/content/pm/PackageParser$SigningDetails;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    sget v0, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    move v11, v0

    new-array v12, v11, [Landroid/util/jar/StrictJarFile;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v0

    const-wide/32 v6, 0x40000

    const/4 v15, 0x0

    :try_start_0
    const-string/jumbo v0, "strictJarFileCtor"

    invoke-static {v6, v7, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    :cond_1
    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-nez v0, :cond_2

    if-eqz v9, :cond_2

    sget-object v0, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1088

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    const-string v0, "ApkSignatureVerifier"

    const-string v1, "Perflock acquired for PackageInstall "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v10, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    :cond_2
    move v0, v15

    :goto_1
    if-ge v0, v11, :cond_3

    new-instance v1, Landroid/util/jar/StrictJarFile;

    invoke-direct {v1, v8, v10, v9}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    aget-object v0, v12, v15

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v3, v0

    if-eqz v3, :cond_11

    aget-object v0, v12, v15

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureVerifier;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v0

    move-object v2, v0

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v0

    move-object v1, v0

    if-eqz v9, :cond_d

    aget-object v0, v12, v15

    invoke-virtual {v0}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v17, v16

    :try_start_1
    const-string v6, "META-INF/"

    move-object/from16 v7, v17

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_3
    move-object v0, v5

    const-wide/32 v6, 0x40000

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;

    invoke-direct {v0}, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;-><init>()V

    move-object v7, v0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v19, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    sget v20, Landroid/util/apk/ApkSignatureVerifier;->NUMBER_OF_CORES:I

    const-wide/16 v21, 0x1

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object/from16 v18, v0

    move-object/from16 v24, v6

    invoke-direct/range {v18 .. v24}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v6, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/zip/ZipEntry;

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    new-instance v16, Landroid/util/apk/ApkSignatureVerifier$1;

    move-object/from16 v25, v1

    move-object/from16 v1, v16

    move-object/from16 v18, v2

    move-object v2, v7

    move-object/from16 v19, v3

    move-object v3, v13

    move-object/from16 v20, v4

    move-object v4, v12

    move-object v14, v6

    move-object v6, v8

    move-object v15, v7

    move-object/from16 v7, v25

    invoke-direct/range {v1 .. v7}, Landroid/util/apk/ApkSignatureVerifier$1;-><init>(Landroid/util/apk/ApkSignatureVerifier$1VerificationData;Landroid/util/ArrayMap;[Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;[Landroid/content/pm/Signature;)V

    move-object/from16 v1, v16

    iget-object v2, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->objWaitAll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v3, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v3, :cond_8

    invoke-virtual {v14, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    monitor-exit v2

    nop

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v5, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v1, v25

    const/4 v15, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_9
    move-object/from16 v25, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v17, v5

    move-object v14, v6

    move-object v15, v7

    iput-boolean v10, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z

    invoke-virtual {v14}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_5
    iget-boolean v0, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_b

    :try_start_4
    iget v0, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-eqz v0, :cond_a

    iget-boolean v0, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    if-nez v0, :cond_a

    const-string v0, "ApkSignatureVerifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "verifyV1 Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iput-boolean v10, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->shutDown:Z

    :cond_a
    const-wide/16 v0, 0x32

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    xor-int/2addr v0, v10

    iput-boolean v0, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->wait:Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "ApkSignatureVerifier"

    const-string v2, "VerifyV1 interrupted while awaiting all threads done..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    goto :goto_5

    :cond_b
    iget v0, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    iget v1, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exceptionFlag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to collect certificates from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v15, Landroid/util/apk/ApkSignatureVerifier$1VerificationData;->exception:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    move-object/from16 v25, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_7
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Landroid/content/pm/PackageParser$SigningDetails;-><init>([Landroid/content/pm/Signature;I)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v2, :cond_e

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_e

    sget-object v2, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v2, 0x0

    sput-boolean v2, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v2, "ApkSignatureVerifier"

    const-string v3, "Perflock released for PackageInstall "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const/16 v26, 0x0

    :goto_8
    move/from16 v2, v26

    if-ge v2, v11, :cond_f

    aget-object v3, v12, v2

    invoke-static {v3}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v26, v2, 0x1

    goto :goto_8

    :cond_f
    return-object v0

    :catchall_1
    move-exception v0

    const-wide/32 v2, 0x40000

    goto/16 :goto_b

    :catch_1
    move-exception v0

    const-wide/32 v2, 0x40000

    goto :goto_9

    :catch_2
    move-exception v0

    const-wide/32 v2, 0x40000

    goto/16 :goto_a

    :cond_10
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide v2, v6

    :try_start_6
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no certificates at entry "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, -0x67

    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide v2, v6

    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has no manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-wide v2, v6

    goto :goto_b

    :catch_5
    move-exception v0

    move-wide v2, v6

    :goto_9
    :try_start_7
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to collect certificates from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x67

    invoke-direct {v1, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    move-wide v2, v6

    :goto_a
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x69

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to collect certificates from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :goto_b
    sget-boolean v1, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    if-eqz v1, :cond_12

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_12

    sget-object v1, Landroid/util/apk/ApkSignatureVerifier;->sPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v1, 0x0

    sput-boolean v1, Landroid/util/apk/ApkSignatureVerifier;->sIsPerfLockAcquired:Z

    const-string v4, "ApkSignatureVerifier"

    const-string v5, "Perflock released for PackageInstall "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v13}, Landroid/util/ArrayMap;->clear()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    :goto_d
    if-ge v1, v11, :cond_13

    aget-object v2, v12, v1

    invoke-static {v2}, Landroid/util/apk/ApkSignatureVerifier;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_13
    throw v0
.end method
