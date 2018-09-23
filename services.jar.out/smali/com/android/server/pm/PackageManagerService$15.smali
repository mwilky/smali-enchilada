.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$15;->val$filterApp:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    :cond_0
    move v0, v3

    if-eqz v0, :cond_6

    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "android.permission.SUSPEND_APPS"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    :cond_2
    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    :cond_4
    :goto_1
    throw v2

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v1, :cond_7

    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method
