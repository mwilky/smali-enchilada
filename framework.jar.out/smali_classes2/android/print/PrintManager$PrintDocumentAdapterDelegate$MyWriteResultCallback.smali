.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWriteResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/IWriteResultCallback;

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private final mSequence:I

.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$202(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWriteCancelled()V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, v0}, Landroid/print/IWriteResultCallback;->onWriteCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteCanceled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 4

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_1
    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFinished"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    nop

    return-void

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
