.class final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    return-void
.end method

.method private addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/tv/TvInputManagerService;->access$6900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    return-void
.end method

.method private ensureHardwarePermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have hardware permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidInput(Landroid/media/tv/TvInputInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TvInputInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    invoke-direct {p0, p2}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->addHardwareInputLocked(Landroid/media/tv/TvInputInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->ensureHardwarePermission()V

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$6900(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->mUserId:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->access$400(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$5600(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeHardwareInput(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to remove input "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
