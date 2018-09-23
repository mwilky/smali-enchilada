.class final Lcom/android/server/AppStateTracker$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/AppStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTracker$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTracker;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v2, v2, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x4e

    invoke-interface {v2, v3, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-virtual {v2, p2, p3, v1}, Lcom/android/server/AppStateTracker;->updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AppStateTracker$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/AppStateTracker$MyHandler;->notifyRunAnyAppOpsChanged(ILjava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
