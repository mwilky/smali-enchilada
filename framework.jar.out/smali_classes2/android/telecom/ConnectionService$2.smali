.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v11, Landroid/os/Message;->what:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.def"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.hC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->access$3000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.haF"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ConnectionRequest;

    move-object v9, v3

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v12, v3

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$4;

    const-string v3, "H.CS.haF.pICR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object v2, v10

    move-object v5, v0

    move-object v6, v9

    move v7, v12

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ConnectionService$2$4;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$4;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "createConnectionFailed %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0, v9, v12}, Landroid/telecom/ConnectionService;->access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_3
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusGained()V

    goto/16 :goto_7

    :pswitch_4
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->onConnectionServiceFocusLost()V

    goto/16 :goto_7

    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.crCoC"

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_3
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v4, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/telecom/ConnectionService$2$2;

    const-string v4, "H.CS.crCoC.pICR"

    const/4 v5, 0x0

    invoke-direct {v2, v10, v4, v5, v0}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v0}, Landroid/telecom/ConnectionService;->access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_6
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_4
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rTRUR"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3400(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_7
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_5
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.-RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0}, Landroid/telecom/ConnectionService;->access$3300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_6
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.+RTT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Connection$RttTextStream;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3200(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_9
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.crCoF"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ConnectionRequest;

    move-object v12, v3

    iget v3, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    move v13, v3

    iget-object v3, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    move-object v14, v3

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Landroid/telecom/ConnectionService$2$3;

    const-string v3, "H.CS.crCoF.pICR"

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, v10

    move-object v5, v14

    move-object v6, v0

    move-object v7, v12

    move-object v11, v8

    move v8, v13

    invoke-direct/range {v1 .. v8}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual {v11}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v3, "createConnectionFailed %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1, v14, v0, v12, v13}, Landroid/telecom/ConnectionService;->access$700(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :goto_3
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    nop

    move-object/from16 v11, p1

    goto/16 :goto_7

    :catchall_7
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_a
    move-object/from16 v11, p1

    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_8
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.oEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$3100(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_8
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_9
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sCE"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v4, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v4, v0, v2, v3}, Landroid/telecom/ConnectionService;->access$2900(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_9
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_a
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pEC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.s"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_b
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rWM"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_c
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_d
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_d
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_10
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.mC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_11
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.anV"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_12
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_10
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.rCSA"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_10
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v3, v0

    :try_start_11
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v4, "H.CS.oPDC"

    invoke-static {v0, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, v3, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v4, v2, :cond_4

    move v1, v2

    nop

    :cond_4
    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->access$2700(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_11
    move-exception v0

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_14
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_12
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sFC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2400(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_12
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_13
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.c"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$2300(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_14
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.sDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$2100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_14
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_15
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.pDT"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/telecom/ConnectionService;->access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_15
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.cASC"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_16
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/CallAudioState;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    invoke-direct {v4, v2}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_16
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.u"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_17
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_17
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.r"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_18
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1b
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.d"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_19
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.r"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1a
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1d
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.an"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1b
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_1b
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v2, "H.CS.ab"

    invoke-static {v0, v2}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1c
    iget-object v0, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/telecom/ConnectionService;->access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto/16 :goto_7

    :catchall_1c
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.crCo"

    invoke-static {v0, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_1d
    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    iget-object v0, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v12, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/telecom/ConnectionRequest;

    iget v3, v12, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-ne v3, v2, :cond_5

    move v8, v2

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    iget v3, v12, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-ne v3, v2, :cond_6

    move v9, v2

    goto :goto_5

    :cond_6
    move v9, v1

    :goto_5
    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->access$300(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Enqueueing pre-init request %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v10, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroid/telecom/ConnectionService$2$1;

    const-string v3, "H.CS.crCo.pICR"

    const/4 v4, 0x0

    move-object v1, v14

    move-object v2, v10

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v14}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v13, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v14, v5

    move-object v15, v0

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Landroid/telecom/ConnectionService;->access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    :goto_6
    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto :goto_7

    :catchall_1d
    move-exception v0

    invoke-virtual {v12}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_1e
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/Logging/Session;

    const-string v3, "H.CS.aCSA"

    invoke-static {v2, v3}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    iget-object v2, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->access$200(Landroid/telecom/ConnectionService;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    nop

    goto :goto_7

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v0

    :cond_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    move-object v1, v0

    :try_start_1f
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v10, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v0, v2}, Landroid/telecom/ConnectionService;->access$2200(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    nop

    :goto_7
    return-void

    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
