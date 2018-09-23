.class final Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

.field private final mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    new-instance p1, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$2;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method clearInputBridge(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": clearInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method closeInputBridge(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": closeInputBridge, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::dispose()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;->dispose()V

    return-void
.end method

.method public onInputBridgeConnected(Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProvProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onInputBridgeConnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvRemoteProvider;->onInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TvRemoteProvProxy"

    const-string v2, "Failed to deliver onInputBridgeConnected. "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v0

    if-ne v0, v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v3, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": openInputBridge, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object/from16 v4, p1

    move-object/from16 v12, p2

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide v13, v5

    :try_start_3
    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v7, v4

    move-object v8, v12

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v11}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    move-object/from16 v4, p1

    move-object/from16 v12, p2

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TvRemoteProvProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openInputBridge, Invalid connection or incorrect uid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    move-object/from16 v12, p2

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method public register()Z
    .locals 3

    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TvRemoteProvProxy"

    const-string v1, "Connection::register()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    invoke-interface {v1}, Landroid/media/tv/ITvRemoteProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mTvRemoteProvider:Landroid/media/tv/ITvRemoteProvider;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->mServiceInputProvider:Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;

    invoke-interface {v1, v2}, Landroid/media/tv/ITvRemoteProvider;->setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection$1;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->binderDied()V

    return v0
.end method

.method sendKeyDown(Landroid/os/IBinder;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyDown, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method sendKeyUp(Landroid/os/IBinder;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendKeyUp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method sendPointerDown(Landroid/os/IBinder;III)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerDown, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method sendPointerSync(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerSync, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method sendPointerUp(Landroid/os/IBinder;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPointerUp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method sendTimestamp(Landroid/os/IBinder;J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-static {v3}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->this$0:Lcom/android/server/tv/TvRemoteProviderProxy;

    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;->sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/android/server/tv/TvRemoteProviderProxy;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTimeStamp, Invalid connection or incorrect uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
