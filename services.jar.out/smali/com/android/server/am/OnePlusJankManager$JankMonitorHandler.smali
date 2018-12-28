.class Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;
.super Landroid/os/Handler;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JankMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusJankManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusJankManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "jankType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "jankLevel"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusJankManager;->access$502(Lcom/android/server/am/OnePlusJankManager;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$400(Lcom/android/server/am/OnePlusJankManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v5, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->access$300(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v5, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->access$200(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$100(Lcom/android/server/am/OnePlusJankManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v5, p0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v5}, Lcom/android/server/am/OnePlusJankManager;->access$100(Lcom/android/server/am/OnePlusJankManager;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
