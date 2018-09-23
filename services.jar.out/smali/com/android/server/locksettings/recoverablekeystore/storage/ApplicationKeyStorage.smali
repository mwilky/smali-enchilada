.class public Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
.super Ljava/lang/Object;
.source "ApplicationKeyStorage.java"


# static fields
.field private static final APPLICATION_KEY_ALIAS_PREFIX:Ljava/lang/String; = "com.android.server.locksettings.recoverablekeystore/application/"

.field private static final TAG:Ljava/lang/String; = "RecoverableAppKeyStore"


# instance fields
.field private final mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

.field private final mKeystoreService:Landroid/security/KeyStore;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Landroid/security/KeyStore;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeystoreService:Landroid/security/KeyStore;

    return-void
.end method

.method public static getInstance(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;

    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->getAndLoadAndroidKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v0, v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;-><init>(Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;Landroid/security/KeyStore;)V

    return-object v0
.end method

.method private getInternalAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.recoverablekeystore/application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteEntry(IILjava/lang/String;)V
    .locals 6

    const-string v0, "RecoverableAppKeyStore"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Del %d/%d/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getGrantAlias(IILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "RecoverableAppKeyStore"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Get %d/%d/%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeystoreService:Landroid/security/KeyStore;

    invoke-virtual {v1, v0, p2}, Landroid/security/KeyStore;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setSymmetricKeyEntry(IILjava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "RecoverableAppKeyStore"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Set %d/%d/%s: %d bytes of key material"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    array-length v4, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->mKeyStore:Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInternalAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, p4, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    invoke-direct {v3, v5}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
