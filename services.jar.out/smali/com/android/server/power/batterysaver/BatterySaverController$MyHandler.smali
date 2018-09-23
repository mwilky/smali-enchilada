.class Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
.super Landroid/os/Handler;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final ARG_DONT_SEND_BROADCAST:I = 0x0

.field private static final ARG_SEND_BROADCAST:I = 0x1

.field private static final MSG_STATE_CHANGED:I = 0x1

.field private static final MSG_SYSTEM_READY:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$400(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-interface {v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onSystemReady(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    nop

    :cond_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->handleBatterySaverStateChanged(ZI)V

    nop

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public postStateChanged(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    nop

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postSystemReady()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
