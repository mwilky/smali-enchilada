.class public Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;
.super Ljava/lang/Object;
.source "KeyStoreProxyImpl.java"

# interfaces
.implements Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxy;


# static fields
.field private static final ANDROID_KEY_STORE_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private final mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method

.method public static getAndLoadAndroidKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/KeyStoreException;

    const-string v3, "Unable to load keystore."

    invoke-direct {v2, v3, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public containsAlias(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method public getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeyStoreProxyImpl;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method
