.class public Landroid/security/keystore/recovery/RecoveryController;
.super Ljava/lang/Object;
.source "RecoveryController.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ERROR_BAD_CERTIFICATE_FORMAT:I = 0x19

.field public static final ERROR_DECRYPTION_FAILED:I = 0x1a

.field public static final ERROR_DOWNGRADE_CERTIFICATE:I = 0x1d

.field public static final ERROR_INSECURE_USER:I = 0x17

.field public static final ERROR_INVALID_CERTIFICATE:I = 0x1c

.field public static final ERROR_INVALID_KEY_FORMAT:I = 0x1b

.field public static final ERROR_NO_SNAPSHOT_PENDING:I = 0x15

.field public static final ERROR_SERVICE_INTERNAL_ERROR:I = 0x16

.field public static final ERROR_SESSION_EXPIRED:I = 0x18

.field public static final RECOVERY_STATUS_PERMANENT_FAILURE:I = 0x3

.field public static final RECOVERY_STATUS_SYNCED:I = 0x0

.field public static final RECOVERY_STATUS_SYNC_IN_PROGRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecoveryController"


# instance fields
.field private final mBinder:Lcom/android/internal/widget/ILockSettings;

.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;Landroid/security/KeyStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    iput-object p2, p0, Landroid/security/keystore/recovery/RecoveryController;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/security/keystore/recovery/RecoveryController;
    .locals 3

    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    new-instance v1, Landroid/security/keystore/recovery/RecoveryController;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/recovery/RecoveryController;-><init>(Lcom/android/internal/widget/ILockSettings;Landroid/security/KeyStore;)V

    return-object v1
.end method

.method public static isRecoverableKeyStoreEnabled(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public createRecoverySession()Landroid/security/keystore/recovery/RecoverySession;
    .locals 1

    invoke-static {p0}, Landroid/security/keystore/recovery/RecoverySession;->newInstance(Landroid/security/keystore/recovery/RecoveryController;)Landroid/security/keystore/recovery/RecoverySession;

    move-result-object v0

    return-object v0
.end method

.method public generateAndStoreKey(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported, use generateKey"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string/jumbo v2, "null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public generateKey(Ljava/lang/String;[B)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAliases()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAliases(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getBinder()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mKeyStore:Landroid/security/KeyStore;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryData()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRecoverySecretTypes()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoverySecretTypes()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecoveryStatus(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v2, 0x3

    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecoveryStatus(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getRootCertificates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/security/keystore/recovery/TrustedRootCertificates;->getRootCertificates()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;,
            Landroid/security/keystore/recovery/LockScreenRequiredException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->getKeyFromGrant(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Null grant alias"

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/security/keystore/recovery/LockScreenRequiredException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/security/keystore/recovery/LockScreenRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    const-string v2, "Failed to get key from keystore"

    invoke-direct {v1, v2, v0}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public initRecoveryService(Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public initRecoveryService(Ljava/lang/String;[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_1

    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Downgrading certificate serial version isn\'t supported."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :cond_1
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Invalid certificate for recovery service"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRecoverySecretTypes([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setRecoverySecretTypes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setRecoveryStatus(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRecoveryStatus(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setServerParams([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setServerParams([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/recovery/InternalRecoveryServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/recovery/RecoveryController;->mBinder:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/recovery/RecoveryController;->wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method wrapUnexpectedServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/security/keystore/recovery/InternalRecoveryServiceException;
    .locals 3

    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/security/keystore/recovery/InternalRecoveryServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected error code for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/keystore/recovery/InternalRecoveryServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
