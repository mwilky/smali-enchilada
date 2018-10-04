.class public final Landroid/security/KeyChain;
.super Ljava/lang/Object;
.source "KeyChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyChain$KeyChainConnection;,
        Landroid/security/KeyChain$AliasResponse;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.android.keychain"

.field private static final ACTION_CHOOSER:Ljava/lang/String; = "com.android.keychain.CHOOSER"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final ACTION_KEYCHAIN_CHANGED:Ljava/lang/String; = "android.security.action.KEYCHAIN_CHANGED"

.field public static final ACTION_KEY_ACCESS_CHANGED:Ljava/lang/String; = "android.security.action.KEY_ACCESS_CHANGED"

.field public static final ACTION_STORAGE_CHANGED:Ljava/lang/String; = "android.security.STORAGE_CHANGED"

.field public static final ACTION_TRUST_STORE_CHANGED:Ljava/lang/String; = "android.security.action.TRUST_STORE_CHANGED"

.field private static final CERT_INSTALLER_PACKAGE:Ljava/lang/String; = "com.android.certinstaller"

.field public static final EXTRA_ALIAS:Ljava/lang/String; = "alias"

.field public static final EXTRA_CERTIFICATE:Ljava/lang/String; = "CERT"

.field public static final EXTRA_KEY_ACCESSIBLE:Ljava/lang/String; = "android.security.extra.KEY_ACCESSIBLE"

.field public static final EXTRA_KEY_ALIAS:Ljava/lang/String; = "android.security.extra.KEY_ALIAS"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PKCS12:Ljava/lang/String; = "PKCS12"

.field public static final EXTRA_RESPONSE:Ljava/lang/String; = "response"

.field public static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field private static final KEYCHAIN_PACKAGE:Ljava/lang/String; = "com.android.keychain"

.field public static final KEY_ATTESTATION_CANNOT_ATTEST_IDS:I = 0x3

.field public static final KEY_ATTESTATION_CANNOT_COLLECT_DATA:I = 0x2

.field public static final KEY_ATTESTATION_FAILURE:I = 0x4

.field public static final KEY_ATTESTATION_MISSING_CHALLENGE:I = 0x1

.field public static final KEY_ATTESTATION_SUCCESS:I = 0x0

.field public static final KEY_GEN_FAILURE:I = 0x6

.field public static final KEY_GEN_INVALID_ALGORITHM_PARAMETERS:I = 0x4

.field public static final KEY_GEN_MISSING_ALIAS:I = 0x1

.field public static final KEY_GEN_NO_KEYSTORE_PROVIDER:I = 0x5

.field public static final KEY_GEN_NO_SUCH_ALGORITHM:I = 0x3

.field public static final KEY_GEN_SUCCESS:I = 0x0

.field public static final KEY_GEN_SUPERFLUOUS_ATTESTATION_CHALLENGE:I = 0x2


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

.method public static bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0

    return-object v0
.end method

.method public static bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/security/KeyChain;->ensureNotOnMainThread(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v2, Landroid/security/KeyChain$1;

    invoke-direct {v2, v0}, Landroid/security/KeyChain$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroid/security/IKeyChainService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v2, v1, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/KeyChain$KeyChainConnection;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/IKeyChainService;

    invoke-direct {v1, p0, v2, v5}, Landroid/security/KeyChain$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v5, "could not bind to KeyChainService"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.keychain.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.keychain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "response"

    new-instance v2, Landroid/security/KeyChain$AliasResponse;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Landroid/security/KeyChain$AliasResponse;-><init>(Landroid/security/KeyChainAliasCallback;Landroid/security/KeyChain$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "alias"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sender"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "response == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-eq p5, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstallIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.certinstaller"

    const-string v2, "com.android.certinstaller.CertInstallerMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->getCertificate(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    nop

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Landroid/security/KeyChain;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return-object v1

    :cond_1
    :try_start_3
    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->getCaCertificates(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v4

    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v1, v0}, Landroid/security/KeyChain;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move-object v0, v3

    move-object v1, v2

    nop

    nop

    :try_start_5
    invoke-static {v0}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v1, :cond_3

    array-length v3, v1

    if-eqz v3, :cond_3

    invoke-static {v1}, Landroid/security/KeyChain;->toCertificates([B)Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    return-object v5

    :cond_3
    new-instance v3, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    new-instance v3, Landroid/security/KeyChainException;

    invoke-direct {v3, v2}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    :try_start_7
    invoke-static {v1, v0}, Landroid/security/KeyChain;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, Landroid/security/KeyChain;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v0, v2

    nop

    nop

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/security/KeyChainException;

    invoke-direct {v2, v1}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_5
    invoke-static {v1, v0}, Landroid/security/KeyChain;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/security/KeyChainException;

    invoke-direct {v1, v0}, Landroid/security/KeyChainException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyChainException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isBoundKeyAlgorithm(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/security/KeyChain;->isKeyAlgorithmSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKeyAlgorithmSupported(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toCertificates([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
