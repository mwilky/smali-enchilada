.class Lcom/android/server/vr/VrManagerService$2;
.super Landroid/os/Handler;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-interface {v2, v0}, Landroid/service/vr/IPersistentVrStateCallbacks;->onPersistentVrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$800(Lcom/android/server/vr/VrManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$900(Lcom/android/server/vr/VrManagerService;)V

    :cond_2
    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v0}, Landroid/service/vr/IVrStateCallbacks;->onVrStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_3
    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$2;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v2}, Lcom/android/server/vr/VrManagerService;->access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
