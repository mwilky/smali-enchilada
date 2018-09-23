.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: changeProviderAndSetting() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewUpdateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->dumpState(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableFallbackLogic(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableFallbackLogic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: enableFallbackLogic() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewUpdateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableMultiProcess(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableMultiProcess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: enableMultiProcess() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewUpdateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public isFallbackPackage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultiProcessEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyRelroCreationCompleted()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->notifyRelroCreationCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a WebView from the SystemServer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
