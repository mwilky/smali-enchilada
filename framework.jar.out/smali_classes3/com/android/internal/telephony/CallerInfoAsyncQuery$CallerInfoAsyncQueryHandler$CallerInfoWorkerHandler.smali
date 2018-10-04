.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallerInfoWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-void
.end method

.method private handleGeoDescription(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->this$1:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/CallerInfo;->getGeoDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->geoDescription:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    nop

    :cond_0
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/AsyncQueryHandler$WorkerArgs;

    iget-object v1, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    if-nez v1, :cond_0

    const-string v2, "CallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected command (CookieWrapper is null): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ignored by CallerInfoWorkerHandler, passing onto parent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v2, "CallerInfoAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " token (arg1): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " query URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;->handleGeoDescription(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_2
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
