.class public Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "AbstractTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler$ExceptionHandler;->this$1:Lnet/oneplus/odm/insight/tracker/AbstractTracker$TrackerAsyncQueryHandler;

    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-void
.end method
