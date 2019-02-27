.class public final Landroid/webkit/WebViewUpdateService;
.super Ljava/lang/Object;
.source "WebViewUpdateService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method public static getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 3

    invoke-static {}, Landroid/webkit/WebViewUpdateService;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/webkit/IWebViewUpdateService;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
