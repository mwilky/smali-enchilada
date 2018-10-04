.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final DO_ADD_HDMI_INPUT:I = 0x6

.field private static final DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final DO_REMOVE_HDMI_INPUT:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$100(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "TvInputService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    :cond_1
    return-void

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-direct {p0, v2, v1}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    :cond_3
    return-void

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v4, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v4, v3}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v4

    if-nez v4, :cond_4

    :try_start_0
    invoke-interface {v2, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "TvInputService"

    const-string v6, "error in onSessionCreated"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_4
    new-instance v5, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v6, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v5, v6, v4}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    :try_start_1
    invoke-interface {v2, v5, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v4, v2}, Landroid/media/tv/TvInputService$RecordingSession;->access$2200(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    return-void

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/TvInputService$Session;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/media/tv/ITvInputSession;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    :try_start_2
    invoke-interface {v3, v2, v4}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v1, v3}, Landroid/media/tv/TvInputService$Session;->access$2100(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v5, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v5, v4}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v5

    if-nez v5, :cond_6

    :try_start_3
    invoke-interface {v3, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    const-string v6, "TvInputService"

    const-string v7, "error in onSessionCreated"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :cond_6
    new-instance v6, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v7, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v6, v7, v5, v2}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    instance-of v7, v5, Landroid/media/tv/TvInputService$HardwareSession;

    if-eqz v7, :cond_a

    move-object v7, v5

    check-cast v7, Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v7}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v9, v8}, Landroid/media/tv/TvInputService;->access$1900(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v7, v6}, Landroid/media/tv/TvInputService$HardwareSession;->access$1602(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    invoke-static {v7, v3}, Landroid/media/tv/TvInputService$HardwareSession;->access$1702(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/media/tv/TvInputService$HardwareSession;->access$1802(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    const-string/jumbo v9, "tv_input"

    invoke-virtual {v1, v9}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    nop

    invoke-static {v7}, Landroid/media/tv/TvInputService$HardwareSession;->access$2000(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v9

    iget-object v10, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v10}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    goto :goto_7

    :cond_8
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "TvInputService"

    const-string v10, "Hardware input id is not setup yet."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string v9, "TvInputService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid hardware input id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v5}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    :try_start_4
    invoke-interface {v3, v1, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    const-string v9, "TvInputService"

    const-string v10, "error in onSessionCreated"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void

    :cond_a
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v7

    iput-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v6, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->access$200(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_7
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
