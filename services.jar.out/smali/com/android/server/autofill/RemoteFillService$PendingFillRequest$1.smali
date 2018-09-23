.class Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;-><init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

.field final synthetic val$request:Landroid/service/autofill/FillRequest;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v0, v0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v1, v1, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v2, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->access$1002(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v2}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "RemoteFillService"

    const-string v4, "Error requesting a cancellation"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-static {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService;->access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->finish()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->this$0:Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;->val$request:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/autofill/RemoteFillService;->access$1100(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillResponse;I)V

    :cond_1
    return-void
.end method
