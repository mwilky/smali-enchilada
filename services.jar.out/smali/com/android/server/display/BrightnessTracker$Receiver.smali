.class final Lcom/android/server/display/BrightnessTracker$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$Receiver;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessTracker;->stop()V

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$800(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "scale"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v1, v2, :cond_1

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v2, v1, v3}, Lcom/android/server/display/BrightnessTracker;->access$900(Lcom/android/server/display/BrightnessTracker;II)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$Receiver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_0
    return-void
.end method
