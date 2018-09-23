.class final Lcom/android/server/am/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field private static final MSG_HIDE_DIALOGS_FOR_PACKAGE:I = 0x4

.field private static final MSG_HIDE_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x2

.field private static final MSG_SHOW_DEPRECATED_TARGET_SDK_DIALOG:I = 0x5

.field private static final MSG_SHOW_UNSUPPORTED_COMPILE_SDK_DIALOG:I = 0x3

.field private static final MSG_SHOW_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$400(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$300(Lcom/android/server/am/AppWarnings;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$200(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    invoke-static {v0}, Lcom/android/server/am/AppWarnings;->access$100(Lcom/android/server/am/AppWarnings;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$000(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideDialogsForPackage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/am/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
