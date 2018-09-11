.class Lcom/google/common/util/concurrent/Futures$6;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/common/util/concurrent/FutureCallback;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$6;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .local v0, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 1317
    nop

    .line 1319
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1320
    return-void

    .line 1315
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1317
    return-void

    .line 1312
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1314
    return-void

    .line 1309
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->val$callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 1311
    return-void
.end method
