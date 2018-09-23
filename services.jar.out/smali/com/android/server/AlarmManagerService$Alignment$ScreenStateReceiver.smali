.class Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$Alignment;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService$Alignment;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_ALIGNMENT:Z

    if-eqz v1, :cond_0

    const-string v1, "AlarmManager_ALIGNMENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService$Alignment;->access$202(Lcom/android/server/AlarmManagerService$Alignment;Z)Z

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Alignment;->access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerService$Alignment;->access$202(Lcom/android/server/AlarmManagerService$Alignment;Z)Z

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService$Alignment;->access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Alignment$ScreenStateReceiver;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService$Alignment;->access$300(Lcom/android/server/AlarmManagerService$Alignment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
