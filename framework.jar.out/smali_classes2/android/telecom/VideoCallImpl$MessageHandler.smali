.class final Landroid/telecom/VideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/telecom/VideoCallImpl;->access$302(Landroid/telecom/VideoCallImpl;I)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onVideoQualityChanged(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallDataUsageChanged(J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v3}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_4
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallSessionEvent(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    iget-object v4, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v4}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    nop

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    :pswitch_6
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$MessageHandler;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    nop

    :goto_0
    return-void

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
