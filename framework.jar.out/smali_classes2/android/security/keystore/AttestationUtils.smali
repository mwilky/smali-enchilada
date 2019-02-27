.class public abstract Landroid/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ID_TYPE_IMEI:I = 0x2

.field public static final ID_TYPE_MEID:I = 0x3

.field public static final ID_TYPE_SERIAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AttestationUtils;->prepareAttestationArgumentsForDeviceId(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/security/KeyStore;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v3
    :try_end_0
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Landroid/security/keystore/DeviceIdAttestationException;

    invoke-virtual {v3}, Landroid/security/keystore/KeyAttestationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    const-string v5, "Unable to perform attestation"

    invoke-direct {v3, v5, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyAttestationException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Landroid/security/keystore/KeyAttestationException;

    const-string v4, "Unable to construct certificate chain"

    invoke-direct {v3, v4, v2}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    new-instance v1, Landroid/security/keystore/KeyAttestationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attestation certificate chain contained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries. At least two are required."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static prepareAttestationArguments(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    if-eqz p2, :cond_8

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v1, -0x6ffffd3c

    invoke-virtual {v0, v1, p2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_7

    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown device ID type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const v7, -0x6ffffd35

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to retrieve MEID"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const v7, -0x6ffffd36

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_2

    :cond_5
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to retrieve IMEI"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_2
    const v6, -0x6ffffd37

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    nop

    :goto_2
    goto :goto_1

    :cond_6
    const v3, -0x6ffffd3a

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    const v3, -0x6ffffd39

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    const v3, -0x6ffffd38

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    const v3, -0x6ffffd34

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    const v3, -0x6ffffd33

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    return-object v0

    :cond_7
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to access telephony service"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing attestation challenge"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static prepareAttestationArgumentsForDeviceId(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/security/keystore/AttestationUtils;->prepareAttestationArguments(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing id types"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
