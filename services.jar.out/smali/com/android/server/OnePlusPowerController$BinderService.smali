.class final Lcom/android/server/OnePlusPowerController$BinderService;
.super Landroid/os/IOnePlusPowerController$Stub;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/os/IOnePlusPowerController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    return-void
.end method


# virtual methods
.method public acquireNetworkTemp()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x50

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OnePlusPowerController"

    const-string v1, "acquireNetworkTemp"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->acquireNetworkTempInternal()V
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

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/OnePlusPowerController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/OnePlusPowerController$Shell;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$BinderService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
