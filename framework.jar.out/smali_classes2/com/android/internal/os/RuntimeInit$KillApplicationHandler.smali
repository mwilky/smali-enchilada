.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    return-void
.end method

.method private ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "AndroidRuntime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FATAL EXCEPTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Process: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "PID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "AndroidRuntime"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$300()Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-direct {v4, v3}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->access$302(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/FrameworkEventCollector;

    :cond_3
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$300()Lnet/oneplus/odm/insight/FrameworkEventCollector;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordAppCrash(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "AndroidRuntime"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->stopProfiling()V

    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    instance-of v2, v1, Landroid/os/DeadObjectException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    :try_start_5
    const-string v2, "AndroidRuntime"

    const-string v3, "Error reporting crash"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    nop

    return-void

    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    throw v1
.end method
