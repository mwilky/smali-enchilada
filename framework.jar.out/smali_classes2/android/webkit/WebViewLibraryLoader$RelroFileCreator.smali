.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RelroFileCreator (64bit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$100()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "can\'t create relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error notifying update service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    :try_start_2
    aget-object v3, p0, v2

    if-eqz v1, :cond_3

    const-string v4, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_1

    :cond_3
    const-string v4, "/data/misc/shared_relro/libwebviewchromium32.relro"

    :goto_1
    invoke-static {v3, v4}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    nop

    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error notifying update service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-nez v0, :cond_4

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    nop

    return-void

    :cond_5
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid RelroFileCreator args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "error notifying update service"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    if-nez v0, :cond_6

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_6
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "error notifying update service"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-nez v0, :cond_7

    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to create relro file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    throw v3
.end method
