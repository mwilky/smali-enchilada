.class Lcom/android/server/OemExService$3;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemExService;
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .line 230
    iput-object p1, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 233
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 234
    .local v0, "newState":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 236
    .local v1, "oldState":I
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2}, Lcom/android/server/OemExService;->access$600(Lcom/android/server/OemExService;)V

    .line 239
    iget-object v2, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/server/OemExService$3;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2}, Lcom/android/server/OemExService;->access$700(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    :cond_1
    :goto_0
    return-void
.end method
