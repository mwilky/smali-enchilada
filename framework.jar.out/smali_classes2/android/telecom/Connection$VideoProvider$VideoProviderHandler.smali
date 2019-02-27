.class final Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->access$000(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "removeVideoProvider - skipped; not present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->access$000(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPauseImage(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestConnectionDataUsage()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->onRequestCameraCapabilities()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    invoke-virtual {v1, v2, v3}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_6
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetZoom(F)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDeviceOrientation(I)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual/range {v3 .. v8}, Landroid/telecom/Connection$VideoProvider;->onSetCamera(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "addVideoProvider - skipped; callback is null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v3}, Landroid/telecom/Connection$VideoProvider;->access$000(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "addVideoProvider - skipped; already present."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->access$000(Landroid/telecom/Connection$VideoProvider;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
