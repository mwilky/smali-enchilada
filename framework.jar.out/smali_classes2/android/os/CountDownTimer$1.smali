.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v1}, Landroid/os/CountDownTimer;->access$000(Landroid/os/CountDownTimer;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v1}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-object v3, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->onFinish()V

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7, v1, v2}, Landroid/os/CountDownTimer;->onTick(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    iget-object v9, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v9}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-gez v9, :cond_2

    sub-long v9, v1, v7

    cmp-long v3, v9, v3

    if-gez v3, :cond_3

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v9}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v9

    sub-long/2addr v9, v7

    :goto_0
    cmp-long v11, v9, v3

    if-gez v11, :cond_3

    iget-object v11, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v11}, Landroid/os/CountDownTimer;->access$200(Landroid/os/CountDownTimer;)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v9, v10}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
