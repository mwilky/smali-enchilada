.class Lcom/android/server/pm/PackageManagerService$PackageFreezer;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageFreezer"
.end annotation


# instance fields
.field private final mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageName:Ljava/lang/String;

.field private final mWeFroze:Z

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p1, v2, v3, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$6900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iput-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v6, p1, v7, p3, p4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mWeFroze:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mFrozenPackages:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mChildren:[Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
