.class public Landroid/net/http/X509TrustManagerExtensions;
.super Ljava/lang/Object;
.source "X509TrustManagerExtensions.java"


# instance fields
.field private final mCheckServerTrusted:Ljava/lang/reflect/Method;

.field private final mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

.field private final mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

.field private final mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    iput-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iput-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    iput-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object p1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "checkServerTrusted"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, [Ljava/security/cert/X509Certificate;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    move-object v0, v1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "isSameTrustConfiguration"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iput-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required method checkServerTrusted(X509Certificate[], String, String, String) missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mDelegate:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mCheckServerTrusted:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_1
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "checkServerTrusted failed"

    invoke-direct {v1, v3, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertificateException;

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to call checkServerTrusted"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/http/X509TrustManagerExtensions;->mIsSameTrustConfiguration:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/net/http/X509TrustManagerExtensions;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string/jumbo v3, "isSameTrustConfiguration failed"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to call isSameTrustConfiguration"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .locals 1

    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/net/config/UserCertificateSource;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
