.class Lcom/android/server/utils/ManagedApplicationService$1;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/utils/ManagedApplicationService;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/ManagedApplicationService;


# direct methods
.method constructor <init>(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onBindingDied$0(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public static synthetic lambda$onServiceConnected$1(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public static synthetic lambda$onServiceDisconnected$2(Lcom/android/server/utils/ManagedApplicationService$1;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v0}, Lcom/android/server/utils/ManagedApplicationService;->access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service binding died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$u8NdnzWjrb-KhRpDHf8fTyh3KVU;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$u8NdnzWjrb-KhRpDHf8fTyh3KVU;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v4}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v5

    if-eq v5, p0, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$IyJ0KZQns9OXjnHsop6Gzx7uhvA;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$IyJ0KZQns9OXjnHsop6Gzx7uhvA;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$600(Lcom/android/server/utils/ManagedApplicationService;)V

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v7}, Lcom/android/server/utils/ManagedApplicationService;->access$400(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/android/server/utils/ManagedApplicationService$BinderChecker;->checkType(Landroid/os/IInterface;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid binder from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    monitor-exit v4

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$400(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;

    move-result-object v5

    move-object v2, v5

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$800(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    move-result-object v5

    move-object v3, v5

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5, v6}, Lcom/android/server/utils/ManagedApplicationService;->access$802(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3, v2}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Received exception from user service: "

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v5}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service disconnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v2}, Lcom/android/server/utils/ManagedApplicationService;->access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;

    move-result-object v3

    if-eq v3, p0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$1$iBg5-L6PAieAfuWNXxIPqvSlAAg;-><init>(Lcom/android/server/utils/ManagedApplicationService$1;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService$1;->this$0:Lcom/android/server/utils/ManagedApplicationService;

    invoke-static {v3}, Lcom/android/server/utils/ManagedApplicationService;->access$500(Lcom/android/server/utils/ManagedApplicationService;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
