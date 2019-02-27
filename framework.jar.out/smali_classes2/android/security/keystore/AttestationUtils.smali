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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idTypes"    # [I
    .param p2, "attestationChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 217
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AttestationUtils;->prepareAttestationArgumentsForDeviceId(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    .line 221
    .local v0, "attestArgs":Landroid/security/keymaster/KeymasterArguments;
    new-instance v1, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 222
    .local v1, "outChain":Landroid/security/keymaster/KeymasterCertificateChain;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/security/KeyStore;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v2

    .line 223
    .local v2, "errorCode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 229
    :try_start_0
    invoke-static {v1}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v3
    :try_end_0
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 230
    :catch_0
    move-exception v3

    .line 231
    .local v3, "e":Landroid/security/keystore/KeyAttestationException;
    new-instance v4, Landroid/security/keystore/DeviceIdAttestationException;

    invoke-virtual {v3}, Landroid/security/keystore/KeyAttestationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 224
    .end local v3    # "e":Landroid/security/keystore/KeyAttestationException;
    :cond_0
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    .line 225
    invoke-static {v2}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    const-string v5, "Unable to perform attestation"

    invoke-direct {v3, v5, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 2
    .param p0, "chain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .line 240
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
    .param p0, "kmChain"    # Landroid/security/keymaster/KeymasterCertificateChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/KeyAttestationException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "rawChain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 89
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v1, "concatenatedRawChain":Ljava/io/ByteArrayOutputStream;
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

    .line 92
    .local v3, "cert":[B
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    .end local v3    # "cert":[B
    goto :goto_0

    .line 94
    :cond_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 95
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    .line 96
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-object v2

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/security/keystore/KeyAttestationException;

    const-string v4, "Unable to construct certificate chain"

    invoke-direct {v3, v4, v2}, Landroid/security/keystore/KeyAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v1    # "concatenatedRawChain":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Landroid/security/keystore/KeyAttestationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attestation certificate chain contained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idTypes"    # [I
    .param p2, "attestationChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 121
    if-eqz p2, :cond_8

    .line 124
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 125
    .local v0, "attestArgs":Landroid/security/keymaster/KeymasterArguments;
    const v1, -0x6ffffd3c

    invoke-virtual {v0, v1, p2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    return-object v0

    .line 131
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 132
    .local v1, "idTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p1, v4

    .line 133
    .local v5, "idType":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v5    # "idType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v2, 0x0

    .line 136
    .local v2, "telephonyService":Landroid/telephony/TelephonyManager;
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

    .line 137
    :cond_2
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 139
    if-eqz v2, :cond_7

    .line 143
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

    .line 144
    .local v5, "idType":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 168
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

    .line 159
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "meid":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 163
    const v7, -0x6ffffd35

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 164
    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 163
    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 165
    goto :goto_2

    .line 161
    :cond_4
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to retrieve MEID"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    .end local v6    # "meid":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "imei":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 154
    const v7, -0x6ffffd36

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 155
    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 154
    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 156
    goto :goto_2

    .line 152
    :cond_5
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to retrieve IMEI"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v6    # "imei":Ljava/lang/String;
    :pswitch_2
    const v6, -0x6ffffd37

    .line 147
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 146
    invoke-virtual {v0, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 148
    nop

    .line 170
    .end local v5    # "idType":Ljava/lang/Integer;
    :goto_2
    goto :goto_1

    .line 171
    :cond_6
    const v3, -0x6ffffd3a

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 171
    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 173
    const v3, -0x6ffffd39

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 173
    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 175
    const v3, -0x6ffffd38

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 175
    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 177
    const v3, -0x6ffffd34

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 178
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 177
    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 179
    const v3, -0x6ffffd33

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 179
    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 181
    return-object v0

    .line 140
    :cond_7
    new-instance v3, Landroid/security/keystore/DeviceIdAttestationException;

    const-string v4, "Unable to access telephony service"

    invoke-direct {v3, v4}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v0    # "attestArgs":Landroid/security/keymaster/KeymasterArguments;
    .end local v1    # "idTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "telephonyService":Landroid/telephony/TelephonyManager;
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idTypes"    # [I
    .param p2, "attestationChallenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .line 106
    if-eqz p1, :cond_0

    .line 110
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AttestationUtils;->prepareAttestationArguments(Landroid/content/Context;[I[B)Landroid/security/keymaster/KeymasterArguments;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing id types"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
