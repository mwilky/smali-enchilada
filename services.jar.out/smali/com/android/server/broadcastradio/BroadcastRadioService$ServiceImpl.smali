.class Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V

    return-void
.end method

.method private enforcePolicyAccess()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasAnyModules()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BcRadioSrv"

    const-string v2, "There are no HAL 2.x modules registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {v1, p2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;)V

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listModules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    iget-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$202(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v3}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$400(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->loadModules(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasModule(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
