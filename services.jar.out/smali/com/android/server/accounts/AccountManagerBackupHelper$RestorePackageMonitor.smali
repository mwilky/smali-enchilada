.class final Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestorePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Lcom/android/server/accounts/AccountManagerBackupHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;-><init>(Lcom/android/server/accounts/AccountManagerBackupHelper;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$400(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->access$600(Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->apply(Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$500(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$000(Lcom/android/server/accounts/AccountManagerBackupHelper;)Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$700(Lcom/android/server/accounts/AccountManagerBackupHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$RestorePackageMonitor;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerBackupHelper;->access$702(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
