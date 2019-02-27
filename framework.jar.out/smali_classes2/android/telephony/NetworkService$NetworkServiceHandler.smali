.class Landroid/telephony/NetworkService$NetworkServiceHandler;
.super Landroid/os/Handler;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method constructor <init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    iget-object v2, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v2}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$500(Landroid/telephony/NetworkService$NetworkServiceProvider;)V

    goto/16 :goto_1

    :pswitch_1
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$400(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_1

    :pswitch_2
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->access$300(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_1

    :pswitch_3
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    new-instance v4, Landroid/telephony/NetworkServiceCallback;

    invoke-direct {v4, v1}, Landroid/telephony/NetworkServiceCallback;-><init>(Landroid/telephony/INetworkServiceCallback;)V

    invoke-virtual {v2, v3, v4}, Landroid/telephony/NetworkService$NetworkServiceProvider;->getNetworkRegistrationState(ILandroid/telephony/NetworkServiceCallback;)V

    goto :goto_1

    :pswitch_4
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->onDestroy()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    goto :goto_1

    :pswitch_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->onDestroy()V

    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :pswitch_6
    if-nez v2, :cond_6

    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->access$200(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-virtual {v4, v0}, Landroid/telephony/NetworkService;->createNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
