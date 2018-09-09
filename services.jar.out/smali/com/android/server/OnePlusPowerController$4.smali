.class Lcom/android/server/OnePlusPowerController$4;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 1131
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1137
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2000(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OnePlusPowerController"

    const-string v2, "In light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks()V

    goto/16 :goto_2

    .line 1146
    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave light device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2000(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1150
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_2

    .line 1153
    :cond_3
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1154
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2000(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1157
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OnePlusPowerController"

    const-string v2, "Leave device idle mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_4
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks()V

    goto/16 :goto_2

    .line 1164
    :cond_5
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 1165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_1

    .line 1177
    :cond_6
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/16 v4, 0x15be

    if-eqz v1, :cond_9

    .line 1178
    const-string v1, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1180
    .local v1, "state":I
    const-string v2, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1184
    :try_start_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1300()I

    move-result v2

    const/16 v6, 0x1e6c

    if-ne v2, v4, :cond_7

    .line 1185
    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$1302(I)I

    .line 1186
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$900(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$200(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1187
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1189
    :cond_7
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1300()I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 1190
    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$1302(I)I

    .line 1191
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$900(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 1192
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1196
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1197
    monitor-exit v5

    .line 1198
    .end local v1    # "state":I
    goto/16 :goto_2

    .line 1197
    .restart local v1    # "state":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1198
    .end local v1    # "state":I
    :cond_9
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1199
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1200
    :try_start_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$900(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 1201
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1203
    :cond_a
    monitor-exit v1

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1204
    :cond_b
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_d

    .line 1205
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1206
    .local v1, "plugged":I
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    and-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_c

    const/4 v4, 0x1

    nop

    :cond_c
    invoke-static {v2, v4}, Lcom/android/server/OnePlusPowerController;->access$302(Lcom/android/server/OnePlusPowerController;Z)Z

    .line 1207
    .end local v1    # "plugged":I
    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1208
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1209
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1212
    :cond_e
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1213
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1216
    :cond_f
    const-string/jumbo v1, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1217
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$1900(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1220
    :cond_10
    const-string/jumbo v1, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1221
    const-string/jumbo v1, "seed"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1222
    .local v1, "seed":I
    const-string v2, "cluster"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1223
    .local v2, "cluster":I
    const-string/jumbo v3, "min_rec"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1224
    .local v3, "min_rec":I
    const-string/jumbo v5, "min_idle"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1225
    .local v5, "min_idle":I
    const-string/jumbo v6, "max_idle"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1226
    .local v6, "max_idle":I
    const-string/jumbo v7, "min_len"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1227
    .local v7, "min_len":I
    const-string/jumbo v8, "max_len"

    invoke-virtual {p2, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1228
    .local v8, "max_len":I
    const-string/jumbo v9, "tolerance"

    invoke-virtual {p2, v9, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1230
    .local v4, "tolerance":I
    if-lez v1, :cond_11

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2202(I)I

    .line 1231
    :cond_11
    if-lez v2, :cond_12

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2302(I)I

    .line 1232
    :cond_12
    if-lez v3, :cond_13

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2402(I)I

    .line 1233
    :cond_13
    if-lez v5, :cond_14

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$2502(I)I

    .line 1234
    :cond_14
    if-lez v6, :cond_15

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$2602(I)I

    .line 1235
    :cond_15
    if-lez v7, :cond_16

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$2702(I)I

    .line 1236
    :cond_16
    if-lez v8, :cond_17

    invoke-static {v8}, Lcom/android/server/OnePlusPowerController;->access$2802(I)I

    .line 1237
    :cond_17
    if-lez v4, :cond_19

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2902(I)I

    .line 1237
    .end local v1    # "seed":I
    .end local v2    # "cluster":I
    .end local v3    # "min_rec":I
    .end local v4    # "tolerance":I
    .end local v5    # "min_idle":I
    .end local v6    # "max_idle":I
    .end local v7    # "min_len":I
    .end local v8    # "max_len":I
    goto :goto_2

    .line 1166
    :cond_18
    :goto_1
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$000(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1169
    :try_start_2
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$1302(I)I

    .line 1175
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$4;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    .line 1176
    monitor-exit v1

    .line 1240
    :cond_19
    :goto_2
    return-void

    .line 1176
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2
.end method
