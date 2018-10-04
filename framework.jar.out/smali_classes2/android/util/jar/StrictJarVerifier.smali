.class Landroid/util/jar/StrictJarVerifier;
.super Ljava/lang/Object;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHMS:[Ljava/lang/String;

.field private static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field private final mainAttributesEnd:I

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatureSchemeRollbackProtectionsEnforced:Z

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SHA-512"

    const-string v1, "SHA-384"

    const-string v2, "SHA-256"

    const-string v3, "SHA1"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/util/jar/StrictJarManifest;->getMainAttributesEnd()I

    move-result v0

    iput v0, p0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    iput-boolean p4, p0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    return-void
.end method

.method static synthetic access$000([B[B)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .locals 3

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .locals 7

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-eqz p6, :cond_1

    add-int/lit8 v4, p5, -0x1

    aget-byte v4, p3, v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, p5, -0x2

    aget-byte v4, p3, v4

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, p5, -0x1

    sub-int/2addr v4, p4

    invoke-virtual {v3, p3, p4, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    :cond_1
    sub-int v4, p5, p4

    invoke-virtual {v3, p3, p4, v4}, Ljava/security/MessageDigest;->update([BII)V

    :goto_1
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v6

    return v6

    :catch_0
    move-exception v3

    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p7
.end method

.method static verifyBytes([B[B)[Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    new-instance v1, Lsun/security/pkcs/PKCS7;

    invoke-direct {v1, p0}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v1, p1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    nop

    invoke-virtual {v3, v1}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    nop

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    return-object v5

    :cond_0
    :try_start_1
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Verified SignerInfo certificate chain is emtpy"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Failed to find verified SignerInfo certificate chain"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "Failed to verify signature: no verified SignerInfos"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "IO exception verifying jar cert"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    throw v1
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .locals 22

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v12, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [B

    if-nez v15, :cond_0

    return-void

    :cond_0
    iget-object v0, v12, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [B

    if-nez v11, :cond_1

    return-void

    :cond_1
    iget-object v0, v12, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v10, v0

    :try_start_0
    invoke-static {v10, v15}, Landroid/util/jar/StrictJarVerifier;->verifyBytes([B[B)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v1, v12, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v1, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    goto/16 :goto_a

    :cond_2
    :goto_0
    nop

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    move-object v9, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    :try_start_2
    new-instance v0, Landroid/util/jar/StrictJarManifestReader;

    invoke-direct {v0, v15, v9}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    const/4 v7, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    iget-boolean v0, v12, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    if-eqz v0, :cond_9

    const-string v0, "X-Android-APK-Signed"

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    nop

    nop

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    nop

    :goto_2
    move-object v0, v5

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v3, :cond_8

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " indicates "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is signed using APK Signature Scheme v3, but no such signature was found. Signature stripped?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " indicates "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is signed using APK Signature Scheme v2, but no such signature was found. Signature stripped?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    sget-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v9, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const-string v1, "Created-By"

    invoke-virtual {v9, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    const-string/jumbo v1, "signtool"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    :cond_c
    iget v1, v12, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    if-lez v1, :cond_e

    if-nez v0, :cond_e

    const-string v16, "-Digest-Manifest-Main-Attributes"

    const/4 v5, 0x0

    iget v4, v12, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v1, v12

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v19, v4

    move-object v4, v11

    move-object/from16 v20, v6

    move/from16 v6, v19

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    iget-object v1, v12, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v1, v14}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1

    :cond_e
    move-object/from16 v20, v6

    move-object v13, v8

    :goto_6
    if-eqz v0, :cond_f

    const-string v1, "-Digest"

    :goto_7
    move-object v3, v1

    goto :goto_8

    :cond_f
    const-string v1, "-Digest-Manifest"

    goto :goto_7

    :goto_8
    const/4 v5, 0x0

    array-length v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v12

    move-object v2, v9

    move-object v4, v11

    invoke-direct/range {v1 .. v8}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v4, v12, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/jar/StrictJarManifest;->getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;

    move-result-object v8

    if-nez v8, :cond_10

    return-void

    :cond_10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/jar/Attributes;

    const-string v6, "-Digest"

    iget v7, v8, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    iget v4, v8, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    const/16 v16, 0x0

    move/from16 v17, v4

    move-object v4, v12

    move/from16 v18, v7

    move-object v7, v11

    move-object/from16 v19, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move v10, v0

    move-object/from16 v21, v11

    move/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v4

    if-eqz v4, :cond_11

    nop

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move-object/from16 v11, v21

    goto :goto_9

    :cond_11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v12, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v14, v4, v5}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v4

    throw v4

    :cond_12
    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    iget-object v1, v12, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v12, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_2
    move-exception v0

    move-object v13, v8

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    return-void

    :catch_3
    move-exception v0

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    :goto_a
    iget-object v1, v12, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-static {v1, v14, v0}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1
.end method

.method private static verifyMessageDigest([B[B)Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-virtual {v0, v8}, Landroid/util/jar/StrictJarManifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v10

    if-nez v10, :cond_1

    return-object v9

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    iget-object v0, v1, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v12, v0

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/Certificate;

    if-eqz v4, :cond_2

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    nop

    move-object v0, v12

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v9

    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[Ljava/security/cert/Certificate;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [[Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    :goto_1
    move v14, v0

    sget-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v14, v0, :cond_6

    sget-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v15, v0, v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Digest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    :try_start_0
    new-instance v0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    iget-object v6, v1, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v16, v6

    move-object v6, v13

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    :try_start_1
    invoke-direct/range {v2 .. v7}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v17, v7

    :goto_2
    add-int/lit8 v0, v14, 0x1

    goto :goto_1

    :cond_6
    return-object v9

    :cond_7
    :goto_3
    return-object v9
.end method

.method isSignedJar()Z
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized readCertificates()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Landroid/util/jar/StrictJarVerifier;->verifyCertificate(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeMetaEntries()V
    .locals 1

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
