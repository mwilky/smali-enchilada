.class Lcom/android/server/OverHeatingDiagnosis$MyHandler;
.super Landroid/os/Handler;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BATTERY_CHANGED:I = 0x1

.field public static final MSG_INIT:I = 0x0

.field public static final MSG_MONITOR_END:I = 0x4

.field public static final MSG_MONITOR_START:I = 0x2

.field public static final MSG_MONITOR_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V

    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "enter MSG_MONITOR_UPDATE"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorUpdateLocked()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "leave MSG_MONITOR_UPDATE"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1}, Lcom/android/server/OverHeatingDiagnosis;->monitorStartLocked()V

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v0}, Lcom/android/server/OverHeatingDiagnosis;->access$702(Lcom/android/server/OverHeatingDiagnosis;I)I

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v1}, Lcom/android/server/OverHeatingDiagnosis;->access$802(Lcom/android/server/OverHeatingDiagnosis;I)I

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4, v3}, Lcom/android/server/OverHeatingDiagnosis;->access$902(Lcom/android/server/OverHeatingDiagnosis;I)I

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1000(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->addRecord(IIIZ)V

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1100(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "OverHeatingDiagnosis"

    const-string v5, "Temperature is up! Start monitoring"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v4}, Lcom/android/server/OverHeatingDiagnosis;->access$1200(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$400(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$500(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v2}, Lcom/android/server/OverHeatingDiagnosis;->access$600(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis;->registerOnlineConfig()V

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis;->grabOnlineConfig()V

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
