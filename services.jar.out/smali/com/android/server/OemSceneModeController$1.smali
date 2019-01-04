.class Lcom/android/server/OemSceneModeController$1;
.super Landroid/os/Handler;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1000(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitorPassive()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStopMonitorPassive()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitor()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$900(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$800(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$700(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1100(Lcom/android/server/OemSceneModeController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
