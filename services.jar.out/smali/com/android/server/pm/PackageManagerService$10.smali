.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 15723
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 15725
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15727
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 15728
    .local v0, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 15729
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15730
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15731
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15732
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 15733
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15734
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15735
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15736
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15737
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    goto :goto_0

    .line 15736
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 15743
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 15745
    .local v1, "update":Z
    :goto_1
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15746
    .local v4, "flags":I
    :goto_2
    if-nez v1, :cond_3

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 15753
    .local v5, "doRestore":Z
    :goto_3
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v2, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15754
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move v6, v7

    .line 15756
    .local v6, "token":I
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15757
    .local v7, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15758
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v8, :cond_5

    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+ starting restore round-trip "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15760
    :cond_5
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const-wide/32 v9, 0x40000

    if-ne v8, v2, :cond_9

    if-eqz v5, :cond_9

    .line 15765
    const-string v2, "backup"

    .line 15766
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 15765
    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 15767
    .local v2, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v2, :cond_8

    .line 15768
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v8, :cond_6

    const-string v8, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "token "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " to BM for possible restore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15770
    :cond_6
    const-string/jumbo v8, "restore"

    invoke-static {v9, v10, v8, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15773
    :try_start_2
    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 15774
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8, v6}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 15776
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 15780
    :catch_0
    move-exception v8

    .line 15781
    .local v8, "e":Ljava/lang/Exception;
    const-string v11, "PackageManager"

    const-string v12, "Exception trying to enqueue restore"

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15782
    const/4 v5, 0x0

    .line 15783
    .end local v2    # "bm":Landroid/app/backup/IBackupManager;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 15778
    .restart local v2    # "bm":Landroid/app/backup/IBackupManager;
    :catch_1
    move-exception v8

    goto :goto_4

    .line 15785
    :cond_8
    const-string v8, "PackageManager"

    const-string v11, "Backup Manager not found!"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15786
    const/4 v5, 0x0

    .line 15790
    .end local v2    # "bm":Landroid/app/backup/IBackupManager;
    :cond_9
    :goto_5
    if-nez v5, :cond_b

    .line 15793
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_a

    const-string v2, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No restore - queue post-install for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15795
    :cond_a
    const-string/jumbo v2, "postInstall"

    invoke-static {v9, v10, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15797
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v8, 0x9

    invoke-virtual {v2, v8, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 15798
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15800
    .end local v2    # "msg":Landroid/os/Message;
    :cond_b
    return-void
.end method
