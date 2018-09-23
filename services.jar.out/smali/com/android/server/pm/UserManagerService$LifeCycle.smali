.class public Lcom/android/server/pm/UserManagerService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycle"
.end annotation


# instance fields
.field private mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->cleanupPartialUsers()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService$LifeCycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnlockUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
