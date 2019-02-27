.class Landroid/service/voice/VoiceInteractionSession$MyCallbacks;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroid/inputmethodservice/SoftInputWindow$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionSession;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onLockscreenShown()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doHide()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/voice/VoiceInteractionSession;->doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onHandleScreenshot(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/app/assist/AssistStructure;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/app/assist/AssistContent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V

    goto/16 :goto_0

    :cond_0
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroid/app/assist/AssistStructure;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Ljava/lang/Throwable;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroid/app/assist/AssistContent;

    iget v11, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual/range {v6 .. v12}, Landroid/service/voice/VoiceInteractionSession;->doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->doDestroy()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionSession;->onCloseSystemDialogs()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskFinished(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Landroid/service/voice/VoiceInteractionSession;->onTaskStarted(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onGetSupportedCommands([Ljava/lang/String;)[Z

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->complete()V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V

    goto :goto_0

    :pswitch_c
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V

    goto :goto_0

    :pswitch_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V

    goto :goto_0

    :pswitch_e
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V

    goto :goto_0

    :pswitch_f
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    invoke-virtual {v1, v2}, Landroid/service/voice/VoiceInteractionSession;->onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V

    nop

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
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

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;->this$0:Landroid/service/voice/VoiceInteractionSession;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionSession;->onBackPressed()V

    return-void
.end method
