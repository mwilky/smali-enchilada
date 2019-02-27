.class Lcom/android/internal/os/WebViewZygoteInit;
.super Ljava/lang/Object;
.source "WebViewZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteConnection;,
        Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WebViewZygoteInit"

.field private static sServer:Lcom/android/internal/os/ZygoteServer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    const-string v0, "WebViewZygoteInit"

    const-string v1, "Starting WebViewZygoteInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "WebViewZygoteInit"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "--zygote-socket="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "--zygote-socket="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    :try_start_0
    sget v3, Landroid/system/OsConstants;->PR_SET_NO_NEW_PRIVS:I

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v3 .. v11}, Landroid/system/Os;->prctl(IJJJJ)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    new-instance v1, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/WebViewZygoteInit$WebViewZygoteServer;-><init>(Lcom/android/internal/os/WebViewZygoteInit$1;)V

    sput-object v1, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    :try_start_1
    sget-object v1, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/ZygoteServer;->registerServerSocketAtAbstractName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ABSTRACT/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->nativeAllowFileAcrossFork(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    const-string v2, ","

    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    nop

    nop

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "WebViewZygoteInit"

    const-string v3, "Fatal exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    sget-object v2, Lcom/android/internal/os/WebViewZygoteInit;->sServer:Lcom/android/internal/os/ZygoteServer;

    invoke-virtual {v2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set PR_SET_NO_NEW_PRIVS"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No --zygote-socket= specified"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
