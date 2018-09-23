.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSerializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainSnapshotProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V

    nop

    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParams(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    nop

    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeys(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void
.end method

.method private static writeApplicationKeyProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alias"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "keyMaterial"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method private static writeApplicationKeys(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/recovery/WrappedApplicationKey;

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeyProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeKeyChainProtectionParams(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V

    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeKeyChainProtectionParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "userSecretType"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "lockScreenUiType"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParams(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    return-void
.end method

.method private static writeKeyChainSnapshotProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "snapshotVersion"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "maxAttempts"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v0, "counterId"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "recoveryKeyMaterial"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v0, "serverParams"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v0, "thmCertPath"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V

    return-void
.end method

.method private static writeKeyDerivationParams(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeKeyDerivationParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "algorithm"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "salt"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v0, "memoryDifficulty"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const-string v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
