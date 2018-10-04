.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificateChain:[Ljava/security/cert/Certificate;

.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v4}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v4

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    invoke-static {v5}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v5

    add-int/lit8 v7, v3, 0x1

    shl-int/lit8 v8, v4, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    nop

    move v4, v6

    move v3, v7

    goto :goto_0

    :cond_0
    iput-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "text size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not even"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    :cond_0
    return-void
.end method

.method public static areEffectiveMatch(Landroid/content/pm/Signature;Landroid/content/pm/Signature;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v0, p1}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    array-length v1, p0

    new-array v1, v1, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    invoke-static {v0, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v3, p1

    new-array v3, v3, [Landroid/content/pm/Signature;

    nop

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    invoke-static {v0, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v3}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v2

    return v2
.end method

.method public static areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 2

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    new-instance v2, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    iget-object v3, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v3, v3

    iget-object v4, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bounced cert length looks fishy; before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static final parseHexDigit(I)I
    .locals 3

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/content/pm/Signature;

    if-eq p0, v1, :cond_1

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v3, v1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    nop

    :goto_2
    return v0
.end method

.method public getChainSignatures()[Landroid/content/pm/Signature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Landroid/content/pm/Signature;

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v0, v0

    add-int/2addr v2, v0

    new-array v0, v2, [Landroid/content/pm/Signature;

    aput-object p0, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Landroid/content/pm/Signature;

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public toChars()[C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 13

    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    if-eqz p1, :cond_1

    array-length v3, p1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    new-array v3, v2, [C

    :goto_1
    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_4

    aget-byte v6, v0, v5

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    mul-int/lit8 v8, v5, 0x2

    const/16 v9, 0x30

    const/16 v10, 0x61

    const/16 v11, 0xa

    if-lt v7, v11, :cond_2

    add-int v12, v10, v7

    sub-int/2addr v12, v11

    goto :goto_3

    :cond_2
    add-int v12, v9, v7

    :goto_3
    int-to-char v12, v12

    aput-char v12, v3, v8

    and-int/lit8 v7, v6, 0xf

    mul-int/lit8 v8, v5, 0x2

    add-int/lit8 v8, v8, 0x1

    if-lt v7, v11, :cond_3

    add-int/2addr v10, v7

    sub-int/2addr v10, v11

    goto :goto_4

    :cond_3
    add-int v10, v9, v7

    :goto_4
    int-to-char v9, v10

    aput-char v9, v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    aput v1, p2, v4

    :cond_5
    return-object v3
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
