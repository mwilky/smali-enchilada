.class Lcom/android/server/StorageManagerService$ObbActionHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionHandler"
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/StorageManagerService$ObbAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBound:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    return-void
.end method

.method private connectToService()Z
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$4500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    return v4

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$4102(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$1500(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x14

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v6, v5, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v7, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7, v6}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, v6, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v8, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget v9, v6, Lcom/android/server/StorageManagerService$ObbState;->nonce:I

    invoke-interface {v7, v8, v9, v2}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_2
    const-string v8, "StorageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t send unmount notification for  OBB: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_1

    :cond_2
    monitor-exit v1

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbAction;

    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const-string v4, "Failed to bind to media container service"

    invoke-direct {v2, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_5

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->disconnectService()V

    goto/16 :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$700(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v0, v2}, Lcom/android/server/StorageManagerService;->access$4102(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    :cond_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/StorageManagerService$ObbAction;

    new-instance v2, Lcom/android/server/StorageManagerService$ObbException;

    const-string v4, "Failed to bind to media container service"

    invoke-direct {v2, v3, v4}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService$ObbAction;->execute(Lcom/android/server/StorageManagerService$ObbActionHandler;)V

    :cond_a
    goto :goto_5

    :cond_b
    const-string v0, "StorageManagerService"

    const-string v1, "Empty queue"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/StorageManagerService$ObbAction;

    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mBound:Z

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/android/server/StorageManagerService$ObbActionHandler;->connectToService()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/server/StorageManagerService$ObbException;

    const-string v2, "Failed to bind to media container service"

    invoke-direct {v1, v3, v2}, Lcom/android/server/StorageManagerService$ObbException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$ObbAction;->notifyObbStateChange(Lcom/android/server/StorageManagerService$ObbException;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/server/StorageManagerService$ObbActionHandler;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :cond_d
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
