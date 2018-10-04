.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSha256Digest([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256DigestBytes([B)[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeSha256DigestBytes([B)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
