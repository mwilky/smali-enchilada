.class Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;
.super Landroid/os/Handler;
.source "OemSceneWiFiBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiBoostThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 179
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 184
    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiBoostThreadHandler msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$900(Lcom/android/server/am/OemSceneWiFiBoostController;I)V

    .line 197
    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$800(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 194
    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$700(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 191
    goto :goto_0

    .line 187
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$600(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    .line 188
    nop

    .line 201
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
