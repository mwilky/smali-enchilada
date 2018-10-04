.class public Landroid/content/AsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/content/AsyncQueryHandler$WorkerHandler;->this$0:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p0, Landroid/content/AsyncQueryHandler$WorkerHandler;->this$0:Landroid/content/AsyncQueryHandler;

    iget-object v0, v0, Landroid/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/content/AsyncQueryHandler$WorkerArgs;

    iget v8, p1, Landroid/os/Message;->what:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    :try_start_0
    iget-object v2, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AsyncQuery"

    const-string v3, "Exception thrown during handling EVENT_ARG_QUERY"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    iput-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    nop

    :goto_1
    iget-object v1, v7, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
